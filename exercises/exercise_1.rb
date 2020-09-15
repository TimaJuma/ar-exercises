require_relative '../setup'

puts "Exercise 1"
puts "----------"

# 
Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: true)

store_num = Store.count
print = 'Total Number of stores: '
puts = store_num