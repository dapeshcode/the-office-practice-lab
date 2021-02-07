require_relative '../config/environment.rb'
require 'require_all'
require_all '../app/models/'

def reload
  load 'config/environment.rb'
end








# employee = Employee.new("name", "salary")
# employee.employee_manager 

# employee = Employee.new("name", "salary")
# employee.employee_manager 

bleak = Manager.new("bleak", "flatiron department", 26)
manager2 = Manager.new("name2", "flatiron department2", 30)
alex = Employee.new("alex", 200000)
# Manager.average_age
testrole = Role.new("Butcher")
testrole2 = Role.new("Head of Digital")

# alex.manager
testrole.add_employee("Ben", 400000, bleak)
testrole.add_employee("Beno", 400000, bleak)
testrole2.add_employee("Benoi", 400000, manager2)
testrole2.add_employee("Benoit", 400000, manager2)

#Employee#role

#Role#employee 
testrole.employees



binding.pry
0 #leave this here to ensure binding.pry isn't the last line