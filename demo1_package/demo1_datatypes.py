print("Balaji Dinakaran")

a = 10
b = 10.2

c = a+b

print(a)
print(b)
print(c)

print(type(a))
print(type(b))
print(type(c))

my_name = "Bala"

text="""
kk
sdsd

"""

print(my_name)
print(type(my_name))

print(my_name[0])
print(my_name.upper())
print(len(my_name))

colors = ["red", "yellow", "green", "blue"]

print(colors)
print(type(colors))
print(colors[2])
print(len(colors))

# add item to list - black
colors.append("black")
print(colors)

# insert pink at index 1
colors.insert(1, "pink")
print(colors)

# remove yellow
colors.remove("yellow")
print(colors)

# fixed set of collection then go tuple. immutable (can't add or remove items after creation, faster)
signal = ("red", "green", "yellow")
print(signal)
print(type(signal))
print(signal[0])
print(len(signal))

check = True
print(check)
print(type(check))

emp_record = {
    "id": 101,
    "name": "saul",
    "role": "Data Analyst",
    "mobile": [98897987, 8999878, 9989899]
}

print(emp_record)
print(type(emp_record))

print(emp_record["id"])
print(emp_record["name"])
print(emp_record["mobile"])
print(emp_record["mobile"][0])

# create a dictionary to store mobile details (name, model_no, country, mobile_number)
mobile_detail = {
    "name": "oneplus",
    "model_number": 8878,
    "country": "India",
    "mobile_number": 8787887
}
mobile_detail["name"]="iPhone"

mobile_detail.pop("country")
print(mobile_detail)


radius=10
# area of circle - for pi=3.14 
result=3.14*radius*radius
print(result)
print("The output is "+str(result))
print(f"The output is {result}")

print("i am",result,"hello","welcome to session",sep="-")


# create list class object
numbers=list()
numbers.append(10)
numbers.append(20)
print(numbers)
print(type(numbers))

numbers1=[10,20]
print(numbers)
print(type(numbers))


name=""
print(type(name))

name1=str()
print(type(name1))