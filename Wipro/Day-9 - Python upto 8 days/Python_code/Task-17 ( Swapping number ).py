#difference between / and //

# print(5/2)
# print(5//2)

# i/p =123
# o/0 = 321
# Swap to reverse the number

# num=123456
# print('Num=',num)
# a = num % 10 # a=3
# num = num // 10 #num=12
# b = num % 10 #b =2
# c = num // 10 # c=1
# rev = a*100+b*10+c*1 # 300+20*1
# print("reversed =", rev)







#task:- num = 123456

num = 123456
print("Num =", num)
 
a = num % 10        # 6
num = num // 10     # 12345
 
b = num % 10        # 5
num = num // 10     # 1234
 
c = num % 10        # 4
num = num // 10     # 123
 
d = num % 10        # 3
num = num // 10     # 12
 
e = num % 10        # 2
f = num // 10       # 1
rev = a*100000 + b*10000 + c*1000 + d*100 + e*10 + f
print("Rev =", rev)
 
Rev = 654321
 
 

#Another step
# a=123
# print("before swapping",a)

# rev= int(str(a)[::-1])
# print ("After swapping number",rev)