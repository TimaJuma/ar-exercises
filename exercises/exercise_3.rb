require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# DELETE
@store3 = Store.find(3)
puts @store3
@store3.destroy
store_num = Store.count
puts "Store number is now: #{store_num}"
