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
alanna = Employee.new("alanna", "80000")
# Manager.average_age
developer = Role.new("developer", alex, bleak)
junior_dev = Role.new("junior_dev", alanna, manager2)
promotion = Role.new("promotion", alanna, manager2)

# alex.manager
developer.add_employee("Ben", 400000, bleak)
developer.add_employee("Beno", 400000, bleak)
junior_dev.add_employee("Benoi", 400000, manager2)
junior_dev.add_employee("Benoit", 400000, manager2)

#Employee#role

#Role#employee 
developer.employees

developer.roles



binding.pry
0 #leave this here to ensure binding.pry isn't the last line