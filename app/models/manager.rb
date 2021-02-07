# manager --< role >-- employee

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
    attr_accessor :name, :age, :department
    @@all = []


    def initialize(manager_name, manager_department, manager_age)
        @manager_name = manager_name 
        @manager_department = manager_department 
        @manager_age = manager_age 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def employees 
        
    end 



    def roles
    end

    def self.all_ages
        self.all.map{|manager|manager.age}        
    end

    # def self.average_age      
    #     self.all_ages.sum/self.all_ages.size
    # end 

    def self.all_departments
        self.all.map{|manager|manager.manager_department} 
    end


    
end


