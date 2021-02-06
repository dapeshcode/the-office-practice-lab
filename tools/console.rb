require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end
require 'require_all'
require_all 'app/models'






# employee = Employee.new("name", "salary")
# employee.employee_manager 

manager = Manager.new("name", "department", "age")
manager2 = Manager.new("name2", "department2", "age2")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line