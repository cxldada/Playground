#conding = utf-8

lst = ['hello', 'world', 98]

lst2 = list(['hello', 'world', 98])

print(lst[-3::1])

print('lst', id(lst))
lst[3:] = lst2
print(lst)
print('lst', id(lst))


def calcIndex(i):
	return i*i


lst = [calcIndex(i) for i in range(1, 10)]
print(lst)
