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
@store1.employees.create(first_name: "Francisco", last_name: "Maturana", hourly_rate: 20)
@store1.employees.create(first_name: "Bolillo", last_name: "Gomez", hourly_rate: 18)
@store2.employees.create(first_name: "Pecoso", last_name: "Castro", hourly_rate: 15)
@store2.employees.create(first_name: "Jose", last_name: "Pekerman", hourly_rate: 60)

#  Employee.all.each { |x| puts x.first_name, x.last_name, x.store_id }

