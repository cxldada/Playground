r = range(10)
print(r, id(r), type(r))
print(list(r))

r = range(1,10)
print(r, id(r), type(r))
print(list(r))

r = range(1,10,2)
print(r, id(r), type(r))
print(list(r))
 
print(10 in r)
print(9 in r)

print(10 not in r)
print(9 not in r)