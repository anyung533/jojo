#while 回圈

i=1
while i<=10: #判断i是否小于等于5.条件函数注意添加“:”
    print(i)
    i+=2   #i+1
print("回圈结束")


#猜数字的游戏

secret_num=53
guess=None  #none表示目前没有数值输入

while secret_num !=guess: #不等于
    guess=int(input("输入数值："))
    if guess > secret_num:
        print("大一点")
    elif guess<secret_num:
        print("小一点")

print("恭喜你赢了")



secret_num=53
guess=None  #none表示目前没有数值输入
guess_count=0 #设置初始次数
guess_limit=3 #设置最高次数
out_of_limit=False #设置布林至等于否

while secret_num !=guess and not(out_of_limit):#如果不等于，且没有超过次数。不不得正
    guess_count +=1 #次数增加1次
    if guess_count<=guess_limit:#如果没有超过次数
        guess=int(input("输入数值："))
        if guess > secret_num:
            print("小一点")
        elif guess<secret_num:
            print("大一点")
    else:
        out_of_limit=True
if out_of_limit:
    print("次数已3次，失败")
else:
    print("三次以内答对，恭喜")

print("恭喜你赢了")