#https://www.youtube.com/watch?v=zdMUJJKFdsU&t=7767s
num1=float(input("请输入第一个数字："))
op=input("请输入运算符号")
num2=float(input("请输入第二个数字"))
if op=="+":
    print(num1+num2)
elif op=="-":
    print(num1-num2)
elif op=="*":
    print(num1*num2)
elif op=="/":
    print(num1/num2)
else:
    print("不支持的运算符号")
