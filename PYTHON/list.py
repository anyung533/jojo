#可以存放很多值的列表
#score = [不同形态的数值]
scores = [50,60,80,90,100]
name=["小白","小黑","小红","小绿","小青"]
print(scores[0])#0等于第一位
print(scores[-1])#-1等于倒数第一位
print(scores[0:2])#0:2等于第一位到第三位，不包含第三位
print(scores[1:])#1:等于第二位之后的所有
print(scores[:4])#1:等于第五位之前的所有

scores[0] = 30#更改第第一位的数值
print(scores)



scores = [50,60,80,90,100]
name=["小白","小黑","小红","小绿","小青"]
scores.extend(name)#拓展列表 .extend函数
print(scores)

