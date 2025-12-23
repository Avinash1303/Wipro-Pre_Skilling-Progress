phy = int (input("Enter physics marks :")) #45
chem = int(input("Enter chem marks :"))  #55
math = int(input("Enter maths marks:"))  #35

#if all the subject marks is greater than equal to 40 so he/ she pass
#else fail

if phy>=40 and chem>= 40 and math>=40:
    print("pass")
else:
    print("Fail")