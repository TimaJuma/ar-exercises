require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# UPDATE TABLE

@store1 = Store.find(id: 1)
@store2 = Store.find(id: 2)
puts @store1

@store1.name = "ChinaTOwn"
print 'UPDATED the name of city'
puts @store1.name
