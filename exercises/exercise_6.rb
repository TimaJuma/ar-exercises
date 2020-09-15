require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Fred", last_name: "Craveiro", hourly_rate: 60)
@store1.employees.create(first_name: "Quinn", last_name: "Caume", hourly_rate: 60)
@store1.employees.create(first_name: "Fedor", last_name: "Zlatanovic", hourly_rate:55)
@store2.employees.create(first_name: "LiJackson", last_name: "Simon", hourly_rate: 60)
@store2.employees.create(first_name: "Kernel", last_name: "Justice", hourly_rate: 60)
@store2.employees.create(first_name: "Justin", last_name: "Manoryk", hourly_rate: 60)

@all_employees = Employee.all_employees
@all_employees.each do |employee|
  puts "This is #{employee.first_name}"
end

puts "Total number of employees: #{Employee.count}"