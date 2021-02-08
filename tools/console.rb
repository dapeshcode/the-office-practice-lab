require_relative '../config/environment.rb'
require 'require_all'
require_all '../app/models/'

def reload
  load 'config/environment.rb'
end


#role instances
junior = Role.new("junior dev")
senior = Role.new("senior dev")
comp_genius = Role.new("comp genius")


#manager instances 
manager1 = Manager.new("sylwia", "IT", 26)
manager2 = Manager.new("lindsey", "SUPPORT", 27)
manager3 = Manager.new("Sean", "SUPPORT", 31)



#employee instances
employee1 = Employee.new("alex", manager1, junior, 500)
employee2 = Employee.new("linda", manager1, senior, 600)
employee3 = Employee.new("da-mell", manager2, junior, 700)
employee4 = Employee.new("bleak", manager3, senior, 800)

employee1.manager
employee2.manager

#employee methods 
#Employee.paid_over 
Employee.paid_over(600)
Employee.all_managers
Employee.find_by_department("SUPPORT")
Employee.search_by_role("junior dev")
employee4.get_promoted(comp_genius)

#role methods 
junior.employees
junior.managers
senior.employees
senior.managers

#manager methods
manager1.employees
manager2.employees

manager1.roles
manager2.roles
manager3.roles

Manager.all_departments
Manager.age









binding.pry
0 #leave this here to ensure binding.pry isn't the last line