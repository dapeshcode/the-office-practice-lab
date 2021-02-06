
# manager --< role >-- employee

# Role is initialized with a name, which won't ever change.
# Role#name
# returns a String that is the role's name
# Role#employees
# returns an array of all the Employees who work at that role
# Role#managers
# returns a unique array of all the Manager instances who oversee Employees at that role
# Role.all
# returns an Array of all the roles
# Role#add_employee
# takes a String argument of an employee's name, a Fixnum argument of the employee's salary and an instance of a Manager class and creates a new employee who work at this role

class Role

attr_reader :name
@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def employees

    end

    def managers
        ​
    end

    def self.all
        binding.pry
        @@all
    end

    def add_employee(employee_name, employee_salary, manager_instance)
       employee_name = Employee.new(employee_name, employee_salary)
    end

end


