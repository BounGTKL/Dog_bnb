# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	city = City.create!(name: Faker::Nation.capital_city)
end

10.times do
	dogsitter = Dogsitter.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
	dogsitter.city = City.all.sample
	dogsitter.save
end

10.times do
	dog = Dog.new(name: Faker::Pokemon.name)
	dog.city = City.all.sample
	dog.save
end

10.times do
	stroll = Stroll.new(date: Faker::Time.backward(14, :all))
	stroll.dogsitter = Dogsitter.all.sample
	stroll.dog = Dog.all.sample
	stroll.save
end
