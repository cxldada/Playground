# coding = utf-8

def fun(a, b, c):
    print('a', a)
    print('b', b)
    print('c', c)

lst = [1, 2, 'hello']
fun(*lst)

dir = {'a': 2, 'b': 4, 'c': 6}
fun(**dir)
