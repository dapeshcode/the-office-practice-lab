
# manager --< role >-- employee

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

    def add_employee(employee_name, employee_salary, manager_instance)
        Employee.new(employee_name, employee_salary)
    
     end
  

    

    def employees
        # returns an array of all the Employees who work at that role
        # binding.pry
        
    end

    def managers
        # returns a unique array of all the Manager instances who oversee Employees at that role
        ​
    end

end




