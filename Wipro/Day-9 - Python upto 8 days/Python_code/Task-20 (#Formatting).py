#Formatting

#string formatting
print('Subjects Marks:') #Subjects Marks:
physics = 50
chemistry = 60
maths = 70
print("physics={}, chemistry={}, maths={}".format(physics, chemistry, maths)) #physics=50, chemistry=60, maths=70
print("physics={0}, chemistry={1}, maths={2}".format(physics, chemistry, maths)) #physics=50, chemistry=60, maths=70
print("physics={x}, chemistry={y}, maths={z}".format(x=physics, y=chemistry, z=maths)) #physics=50, chemistry=60, maths=70
total = physics+chemistry+maths
print("Total Marks", f"{total}") #Total Marks 180
print("Roll No=", "7".zfill(4)) #Roll No= 0007
 