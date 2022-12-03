#conding = utf-8

class Student:
	native_pace = '重庆'
	def __init__(self, name, age):
		self.name = name
		self.age = age

	def eat(self):
		print('学生在吃饭')

	@staticmethod
	def stm():
		print('staticmethod方法')

	@classmethod
	def cm(cls):
		print('classmethod方法')


stu1 = Student('cxl',25);
stu2 = Student('arthur',25);
print(stu1.native_pace)
print(stu2.native_pace)
print(stu1.name)
print(stu2.name)
print(stu1.age)
print(stu2.age)

stu1.eat()
stu2.eat()

stu1.cm()
stu2.cm()

stu1.stm()
stu2.stm()

Student.stm()
Student.cm()
Student.eat()