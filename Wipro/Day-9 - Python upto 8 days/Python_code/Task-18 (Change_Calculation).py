#WAP for change calculation with respect to Total amount

Amount = int(input("Enter the Amount for Withdraw :"))

print("100 Notes=",Amount//100)
print("50 Notes=",(Amount % 100) //50)
print("20 Notes=",((Amount %100) % 50) //20)
print("10 Notes=",(((Amount % 100) % 50) %20 ) //10)
print("5 Notes=",((((Amount % 100) % 50) %20) %10) //5)