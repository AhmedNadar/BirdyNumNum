# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

food_types = ["Pancake", "Dessert", "Snack","Breakfast"]
food_types.each { |d| FoodType.find_or_create_by(name: d) }

food_preferences = ["Vegetarian", "Vegan", "Meat", "Dairy"]
food_preferences.each { |d| FoodPreference.find_or_create_by(name: d) }

cuisines = ["Italian", "Mexican", "Canadian", "Chinese", "Argentinian"]
cuisines.each { |d| Cuisine.find_or_create_by(name: d) }