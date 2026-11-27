class Employee:
    # static variable or class variable
    company_name=None
    company_headquarter=None
    
    def __init__(self,emp_id=0):
        # non-static variable or instance variable 
        self.emp_id=emp_id
        self.emp_name=None
        self.emp_salary=None

    # not static method
    def print_employee_detail(self):
        print(self.emp_id)
        print(self.emp_name)
        print(self.emp_salary)
        print(Employee.company_name)
        print(Employee.company_headquarter)
        print("----------------------------------------")

    # static method 
    @staticmethod
    def print_author_name():
        print("Balaji Dinakaran")

    @staticmethod
    def get_prompt(prompt):
        return f"the given prompt is {prompt}"