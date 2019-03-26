# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mica = Foodie.find_or_create_by(username: 'Meeks-a-Geek')
naomi = Foodie.find_or_create_by(username: 'NayNay')

get_that_green = Category.find_or_create_by(name: 'Get that Green')
junk_in_the_trunk = Category.find_or_create_by(name: 'Junk in the Trunk')

ny_ny = Location.find_or_create_by(city: "New York", state: "New York")

vanilla_bean_donut = Food.find_or_create_by(name: "Vanilla Bean Donut", like_count: 0, category: junk_in_the_trunk, address: "110 Wall Street", spot_name: "Doughnut Plant", location: ny_ny)
guac_burger = Food.find_or_create_by(name: "Guac Burger", like_count: 0, category: get_that_green, address: "110 Wall Street", spot_name: "by Chloe", location: ny_ny)
