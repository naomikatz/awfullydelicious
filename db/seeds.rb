# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mica = Foodie.find_or_create_by(username: 'Meeks-a-Geek')
naomi = Foodie.find_or_create_by(username: 'NayNay')

ny_ny = Location.find_or_create_by(city: "Manhattan", state: "New York")
bk_ny = Location.find_or_create_by(city: "Brooklyn", state: "New York")
qns_ny = Location.find_or_create_by(city: "Queens", state: "New York")
bx_ny = Location.find_or_create_by(city: "Bronx", state: "New York")
si_ny = Location.find_or_create_by(city: "Staten Island", state: "New York")

donuts = Category.find_or_create_by(name: "Donuts")
cake = Category.find_or_create_by(name: "Cake")
ice_cream = Category.find_or_create_by(name: "Ice Cream")
candy = Category.find_or_create_by(name: "Candy")
pastries = Category.find_or_create_by(name: "Pastries")
cookies = Category.find_or_create_by(name: "Cookies")
cupcakes = Category.find_or_create_by(name: "Cupcakes")
pie = Category.find_or_create_by(name: "Pie")
