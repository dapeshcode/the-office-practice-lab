
# manager --< employee >-- role

# Role#employees
# returns an array of all the Employees who work at that role
# Role#managers
# returns a unique array of all the Manager instances who oversee Employees at that role
# Role.all
# returns an Array of all the roles
# Role#add_employee
# takes a String argument of an employee's name, a Fixnum argument of the employee's salary and an instance of a Manager class and creates a new employee who work at this role

class Role 
    attr_reader :role_name

    @@all = []

    def initialize(role_name)
        @role_name = role_name 
        @@all << self 
    end

    def self.all
        @@all
    end 

    def employees 
        # returns an array of all the Employees who work at that role
        Employee.all.select{|employee| employee.role == self}
    end 

    def managers
    # returns a unique array of all the Manager instances who oversee Employees at that role
        employees.map(&:manager).uniq
    
    end 

    def add_employee(emp_name, emp_salary, manager_instance)
        Employee.new(emp_name, manager_instance, self, emp_salary)
    end 

end




