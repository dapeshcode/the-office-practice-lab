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

    def initialize(name, department,age)
        @name = name 
        @department = department 
        @age = age 
        @@all << self 

    end 

    def self.all 
        @@all
    end 

    def self.average_age
        self.age.sum/self.size.to_f
        binding.pry
    end 

end

test = Manager.new("name", "age", "d")
