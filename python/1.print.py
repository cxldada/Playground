print(520)

print(98.5)

print('helloworld')

print("helloworld")

fp = open("./TempDir/print.out",'a+')
print('hello world',file=fp)
fp.close()