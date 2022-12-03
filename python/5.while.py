a = 1
while a < 10:
    print(a)
    a += 1

a, sum = 1, 0
while a <= 100:
	if not bool(a % 2):
		sum += a

	a += 1

print("0~100的偶数和: ", sum)

a, sum = 0, 0
while a < 100:
	a += 2
	sum += a

print("0~100的偶数和: ", sum)
