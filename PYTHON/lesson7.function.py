#函式，分两部分，一是对函式的定义，二是对函式的呼叫
def hello():#def=define （）里面是参数
    print("hello")#tab键，函式的内部一部分。
hello

def hello(name):#def=define （）里面是参数
    print("hello"+name)#tab键，函式的内部一部分。
hello("DAVID")

def hello(name,age):#多个参数
    print("hello"+name+"你今年"+age+"岁")#tab键，函式的内部一部分。
hello("DAVID","55") #字串和数字不能相加+，所以"55"。解决办法如下

def hello(name,age):#多个参数
    print("hello"+name+"你今年"+str(age)+"岁")#tab键，函式的内部一部分。
hello("DAVID",55) #字串和数字不能相加+，所以"55"。解决办法如下

def add(numb1,numb2):
    print(int(numb1)+int(numb2))
add(5,6)

def add(numb1,numb2):
    print(int(numb1)+int(numb2))
    return 199#回传指定数值，不会介绍
value=add(5,6)
print(value)
