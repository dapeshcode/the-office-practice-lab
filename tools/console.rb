require_relative '../config/environment.rb'
require 'require_all'
require_all '../app/models/'

def reload
  load 'config/environment.rb'
end








# employee = Employee.new("name", "salary")
# employee.employee_manager 

bleak = Manager.new("bleak", "flatiron department", 26)
manager2 = Manager.new("name2", "flatiron department2", 30)
alex = Employee.new("alex", 200000)
Manager.average_age
testrole = Role.new(bleak)
testrole2 = Role.new(alex)

alex.manager

binding.pry
0 #leave this here to ensure binding.pry isn't the last line