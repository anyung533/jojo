#if判断句
#如果肚子饿
#我就去吃饭
hungry=True
if hungry:
    print("我就去吃饭")

#如果今天下雨，我就去上班。否则，我就走路去上班
rainy=True
if rainy:
    print("我就去上班")
else:
    print("我就走路去上班")

#如果你考100分，我就给你100元
#或如果你考80分，给你50
#考60以上，给你10元
#考60以下，你给我100
score=55 #=右边的值放入左边
if score==100: #==比较左边的值和右边的值有没有相等
    print("我给你100元")
elif score>=80:#else if或是如果
    print("我给你80")

elif score>=60:#else if或是如果
    print("我给你60")
else:   #否则
    print("你给我100")

#如果今天考100，且今天下雨，我就给你100，否则你给我100.
score=100
rainy=True
if score==100 and rainy:
    print("我给你1000元")
else:
    print("你给我1000元")

#如果今天考100，且今天下雨，我就给你100，否则你给我100.

score=100
rainy=True
if score==100 or rainy:
    print("我给你1000元")
else:
    print("你给我1000元")

#如果今天考100，或今天没下雨，我就给你100，否则你给我100.

score=100
rainy=True
if score==100 or not(rainy):
    print("我给你1000元")
else:
    print("你给我1000元")

#如果今天没有考100，或今天没下雨，我就给你100，否则你给我100.

score=100
rainy=True
if score!=100 or not(rainy):#!=score这个值是不是不等于100，如果不等于则true
    print("我给你1000元")
else:
    print("你给我1000元")

#谁最大
def max_num(num1,num2,num3):
    if num1>=num2 and num1>=num3:
        return num1
    elif num2>=num1 and num2>=num3:
        return num2
    else:
        return num3
print(max_num(2,6,10))
