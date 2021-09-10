#如何使用字串
print("hello zhuanghaolin")

#换行 \n
print("hello \nzhuanghaolin")


#添加双引号 \告诉Python这是字串的一部分，不是结尾。
print("hello\" zhuanghaolin")
print("hello "+"Mr zhuang")

phrase = "DAVID"
print  ("HELLO " + phrase)

#function
#.lower()字符变小写   .upper()字符变大写 isupper()是不是全部大写 islower是不是全部小写
print(phrase.lower())
print(phrase.upper())
print(phrase.isupper())
print(phrase.islower())
print(phrase.lower().islower())

#[]字符的位置，开头从0开始算
phrase = "DAVID"
print  (phrase[0])

#index查找目标值.index("V") 同样的符号只显示最前面的位置
phrase = "DAVID"
print  (phrase.index("V"))

#替换.replace("目标""最终值")

phrase = "DAVID"
print  (phrase.replace("V","DDDDD"))

print(555*555)