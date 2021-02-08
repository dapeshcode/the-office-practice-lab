# manager --< role >-- employee



# Employee.find_by_department
# takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
# Employee.search_by_role
# takes a String argument that is the name of a role and returns all the employees who work at that role
# Employee#get_promoted
# takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary.​


class Employee
    attr_accessor :employee_name, :employee_salary, :manager, :role

    @@all = []

    def initialize(employee_name, manager, role, employee_salary=400)
        @employee_name = employee_name 
        @employee_salary = employee_salary
        @manager = manager
        @role = role
        @@all << self
    
    end 

    def self.all
        @@all
    end 

    def self.paid_over(fix_num)
        # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
        self.all.select{|employee| employee.employee_salary > fix_num}
    end 

    def self.all_managers 
        #helper method returns all managers 
        self.all.map{|employee| employee.manager}

    end 

    def self.find_by_department(department_name)
        # takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
        self.all.find{|employee| employee.manager.department == department_name}
    end 

    def self.search_by_role(role)
        # takes a String argument that is the name of a role and returns all the employees who work at that role
        self.all.select{|employee| employee.role.role_name == role}
    end 

    def get_promoted(new_role)
        # takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary.​
        self.role = new_role
        self.employee_salary += 10000
    end 

end 
