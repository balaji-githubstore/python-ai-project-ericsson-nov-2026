from demo3_class_object_package.employee_module import Employee

# how to call static variable?
Employee.company_name="Ericsson"
Employee.company_headquarter="USA"

Employee.print_author_name()

# how to call non-static variable?
emp1=Employee(101)
emp2=Employee()

emp1.emp_id=101
emp1.emp_name="saul"
emp1.emp_salary=90000

emp2.emp_id=102
emp2.emp_name="Peter"
emp2.emp_salary=8000

print(type(emp1))
print(type(emp2))

emp2.print_employee_detail()
emp1.print_employee_detail()


output=Employee.get_prompt("how are you")
print(output)