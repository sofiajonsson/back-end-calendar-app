# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
#
puts "Seeding Users..."
uu1= User.create(name:"Agnes", email: "agnes@me.com", password: "friend")
uu2= User.create(name:"Agetha", email: "agetha@me.com", password: "friend")
uu3= User.create(name:"Jermaine", email: "jermaine@me.com", password: "friend")
uu4= User.create(name:"Jack", email: "jack@me.com", password: "friend")
puts " Users seeded..."

Event.destroy_all
puts "Seeding event .. "
ee1 = Event.create(user_id: 4, title: "Go to Lunch", description: "Walk to Pike Place", date: 15)
