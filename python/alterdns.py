#!/usr/bin/python3
# coding=utf-8
 
import sys
import requests
from lxml import etree
import json
from aliyunsdkcore import client                                                                                                                 
from aliyunsdkalidns.request.v20150109 import UpdateDomainRecordRequest
from aliyunsdkalidns.request.v20150109 import DescribeDomainRecordsRequest
 
import hashlib
import hmac
from Crypto import Random
 
gl_cookies = {}
gl_cookie = ''
gl_cookies_path = "cookies"
gl_csrf_param = ''
gl_csrf_token = ''
gl_count = 0
 
firstNonce = ''
finalNonce = ''
salt = ''


AccessKeyID = 'LTAI4FykhBqJiaAEeEWJgQVY'
AccessKeySecret = 'KDBnfy1bkRwUsJ8OhKYYBiVTsYhP3x'
mydomain = 'cxldada.cn'
 
#由首页获取信息
def update_Information(html):
#   html = requests.get("http://192.168.3.1/html/index.html")
    global gl_cookies
    global gl_csrf_param
    global gl_csrf_token
    
    gl_cookies = html.cookies
    url_tree = etree.HTML(html.text)
    gl_csrf_param = url_tree.xpath("//meta[@name='csrf_param']/@content")[0]
    gl_csrf_token = url_tree.xpath("//meta[@name='csrf_token']/@content")[0]
 
def save_html(html):
    global gl_count
    gl_count += 1
    with open("H:%d.html" % gl_count, "wb") as f:
        f.write(bytes(html.text, encoding='utf-8'))
 
def salt_password(password, salt, iter_times):
    return hashlib.pbkdf2_hmac('sha256', password, salt, iter_times)
 
def Main_Login(sess, username, passwd):
    global gl_cookie
    global gl_cookies
    global gl_csrf_param
    global gl_csrf_token
 
    firstNonce = Random.get_random_bytes(32)
    result = sess.get("http://192.168.3.1/html/index.html")
    update_Information(result)
 
    request_header = {
    'Connection': 'keep-alive',
    'Cache-Control': 'max-age=0',
    'Origin': 'http://192.168.3.1',
    'Content-Type': 'application/json;charset=UTF-8',
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36',
    'Accept': 'application/json, text/javascript, */*; q=0.01',
    'X-Requested-With': 'XMLHttpRequest',
    '_ResponseFormat': 'JSON',
    'Referer': 'http://192.168.3.1/html/index.html',
    'Accept-Encoding': 'gzip, deflate',
    'Accept-Language': 'zh-CN,zh;q=0.9,en;q=0.8',
    }
 
    firstNonce_str = Random.get_random_bytes(32).hex()
    firstNonce = bytes(firstNonce_str, encoding='utf-8')
    
    login_post_data = {
 
        'csrf': {'csrf_param': gl_csrf_param, 'csrf_token': gl_csrf_token},
        'data': {'username': 'admin', 'firstnonce': firstNonce_str},
    }
 
    url_routerlogin = 'http://192.168.3.1/api/system/user_login_nonce'  #/api/system/user_login_nonce
    deviceLogin = sess.post(url_routerlogin,
                                headers=request_header,  # headers http 头部信息
                                data=json.dumps(login_post_data, ensure_ascii=True),
                             #    params = {'_':int(time.time())}, #params 参数
                                cookies = gl_cookies,				  #cookies cookie
                                # allow_redirects = False,		  #allow_redirects 禁用跳转
                              #  timeout=0.5
 
                                )
    login_respon = json.loads(deviceLogin.text)
    #save_html(deviceLogin)
    # print(deviceLogin.url)
    if(login_respon['err'] == 0):
        print('first post success')
    else:
        print('first post failed')
 
    #  第二次post
    gl_csrf_param = login_respon['csrf_param']  #字符串 特别信息，包含所有字符，不是hex表示
    gl_csrf_token = login_respon['csrf_token']  #字符串 特别信息，包含所有字符，不是hex表示
    salt = bytes.fromhex(login_respon['salt'])    #只含0-9，a-f为hex表示，str转为bytes   #firstnonce也是
    finalNonce = login_respon['servernonce']
    authMsg = firstNonce_str + ',' + finalNonce + ',' + finalNonce
    iterations_rece = int(login_respon['iterations'])
 
    passwd = passwd.encode()  #str to bytes
 
    saltPassword = salt_password(passwd, salt, iterations_rece)  # 加盐算法不同语言命名有差异hashlib.pbkdf2_hmac
    mac = hmac.new(b'Client Key', saltPassword, hashlib.sha256)  #b'Client Key'作key，msg加密
    clientKey = mac.digest()
    storeKey = hashlib.sha256(clientKey).digest()
    mac = hmac.new(bytes(authMsg, encoding='utf-8'), storeKey, hashlib.sha256)
    clientSignature = mac.digest()
    clientKey = bytearray(clientKey)
    for i in range(len(clientKey)):
        clientKey[i] = clientKey[i] ^ clientSignature[i]
    clientProof = bytes(clientKey)
 
    login_post_data = {   #要求为字符串
        'csrf': {'csrf_param': gl_csrf_param, 'csrf_token': gl_csrf_token},
        'data': {'finalnonce': finalNonce, 'clientproof': clientProof.hex()},    #传输时为hex码，不会出现异常码，出现不是ascii的情况
    }
 
    url_routerlogin = 'http://192.168.3.1/api/system/user_login_proof'  # /api/system/user_login_nonce
    deviceLogin = sess.post(url_routerlogin,
                            headers=request_header,  # headers http 头部信息
                            data=json.dumps(login_post_data),
                            #    params = {'_':int(time.time())}, #params 参数
                         #   cookies=gl_cookies,  # cookies cookie
                            # allow_redirects = False,		  #allow_redirects 禁用跳转
                            #  timeout=0.5
 
                            )
    login_respon = json.loads(deviceLogin.text)
    if(login_respon['err']==0):
        print('login success')
    else:
        print('login failed')
    return

# 获取路由器公网IP
def get_router_wan_ip():
	sess = requests.Session()

	username = 'admin'  # str(input('帐号:'))
	passwd = 'Chenwifi@'  # str(input('密码:'))
	Main_Login(sess, username, passwd)
	result = sess.get('http://192.168.3.1/api/ntwk/wan?type=active')
	true = True
	false = False
	result = eval(result.text)
	return result['IPv4Addr']

# 获取dns解析记录
def get_records():
    myclient = client.AcsClient(ak=AccessKeyID, secret=AccessKeySecret)
    request = DescribeDomainRecordsRequest.DescribeDomainRecordsRequest()
    request.set_DomainName(mydomain)
    request.set_accept_format('json')
    result = myclient.do_action_with_exception(request)
    result = json.loads(result.decode())
    return result['DomainRecords']['Record']

# 更新dns解析记录
def update_record(record, ip):
    myclient = client.AcsClient(ak=AccessKeyID, secret=AccessKeySecret)
    request = UpdateDomainRecordRequest.UpdateDomainRecordRequest()
    request.set_RR(record['RR'])
    request.set_Type("A")
    request.set_RecordId(record['RecordId'])
    request.set_Value(ip)
    request.set_accept_format('json')
    myclient.do_action_with_exception(request)

# 修改dns解析
def alter_dns():
	ip = get_router_wan_ip()
	print('cur router wan ip: %s', ip)
	records = get_records()
	for record in records:
		if record['Type'] == "A" and record['Value'] != ip:
			update_record(record, ip)
			print('alter dns! [%s].[%s] : [%s] --> [%s]', record['RR'], mydomain, record['Value'], ip)

if __name__ == "__main__":
	alter_dns()