# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Park.destroy_all
Park.create!(name: "Zion National Park", state: "Utah")
Park.create!(name: "Yosemite National Park", state: "California")
Park.create!(name: "Crater Lake", state: "Oregon")
Park.create!(name: "Grand Canyon National Park", state: "Arizona")
Park.create!(name: "Glacier National Park", state: "Montana")
Park.create!(name: "Joshua Tree National Park", state: "California")
Park.create!(name: "Olympic National Park", state: "Washington")
Park.create!(name: "Saguaro National Park", state: "Arizona")
Park.create!(name: "Yellowstone National Park", state: "Montana")