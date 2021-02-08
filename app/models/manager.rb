# manager --< employee >-- role

# Manager is initialized with a name, department and age. All of these attributes can change.
# Manager#name
# returns a String that is the manager's name
# Manager#department
# returns a String that is the department that the manager oversees
# Manager#age
# returns a Fixnum that is the age of the manager
# Manager#employees
# returns an Array of all the employees that the manager oversees
# Manager#roles
# returns an Array of all the roles that the manager oversees
# Manager.all
# returns an Array of all the managers
# Manager.all_departments
# returns an Array of all the department names that every manager oversees without repetitions
# Manager.average_age
# returns a Float that is the average age of all the managers​


class Manager 
    attr_accessor :manager_name, :department, :manager_age
    
    @@all = []
    DEPARTMENTS = []

    def initialize(manager_name, department, manager_age)
        @manager_name = manager_name
        @department = department
        @manager_age = manager_age
        @@all << self 
        DEPARTMENTS << department
    end 

    def self.all
        @@all
    end 
    
    def self.all_departments 
        # returns an Array of all the department names that every manager oversees without repetition
        DEPARTMENTS.uniq
    end 


    def employees
        # returns an Array of all the employees that the manager oversees
        Employee.all.select{|employee| employee.manager == self}
    end 

    def roles 
        # returns an Array of all the roles that the manager oversees
        employees.map(&:role).uniq
    end 

    def self.all_ages
        #helper method
        all.map(&:manager_age)
    end 

    def self.age 
    # returns a Float that is the average age of all the managers​
    all_ages.sum.to_f/all_ages.size.to_f
    end 
     
end 


   
   





    



