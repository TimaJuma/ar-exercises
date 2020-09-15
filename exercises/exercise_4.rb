require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# CREATE and LOAD
# CREATE
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "total stores number are now: #{Store.count}"

@mens_stores = Store.where(mens_apparel:true)
puts "Mens store number : #{@mens_stores}"


@mens_stores.each do |store|
  puts "Store anual revenue: #{store.annual_revenue}"
end

@women_stores = Store.where('annual_revenue < ?', 1000000).where(womens_apparel: true)
@women_stores.each do |store|
  puts "Store anual revenue less than 1MLN: #{store.annual_revenue}"
end