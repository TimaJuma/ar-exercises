require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
    belongs_to :store
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 60, less_than_or_equal_to: 200 }
    validates :store_id, presence: true
end

class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
    validate :apparel?

    def apparel?
        
        if mens_apparel == nil && womens_apparel == nil
            errors.add(:mens_apparel, "Missing mens_apparel value")
            errors.add(:womens_apparel, "Missing womens_apparel value")
        end
    end
    
end

@store2.employees.create(first_name: "Ben", last_name: "Wong", hourly_rate: 60)
thomson = Store.create(name: "Thomson", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

puts "Please provide a store name:"
print "> "
new_store = gets.chomp
create_new_store = Store.create(name: new_store)
puts create_new_store.errors.full_messages
