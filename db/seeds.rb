# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
User.destroy_all

User.create(
  first_name: "John", 
  last_name: "Doe",
  email:"john@gmail.com",
  password:"123456" ,
  state: 0,
  status: 1,
)
puts "John Doe has been created"

User.create(
  first_name: "Alice", 
  last_name: "Dupont",
  email:"alice@gmail.com",
  password:"123456" ,
  state: 0,
  status: 1,
)
puts "Alice Dupont has been created"

eric = User.create(
  first_name: "Eric", 
  last_name: "Dev",
  email:"developer@gmail.com",
  password:"123456" ,
  state: 0,
  status: 1,
)
puts "Eric has been created"

Event.destroy_all

Event.create(
  title:"Working day",
  event_date: Date.today,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)

Event.create(
  title:"Working day",
  event_date: Date.today,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)

Event.create(
  title:"Working day",
  event_date: Date.today + 1,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)

Event.create(
  title:"Working day",
  event_date: Date.today + 2,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)

Event.create(
  title:"Working day",
  event_date: Date.today + 3,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)

Event.create(
  title:"Working day",
  event_date: Date.today + 4,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)

Event.create(
  title:"CP",
  event_date: Date.today + 8,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)

Event.create(
  title:"CP",
  event_date: Date.today + 9,
  start_hour: 8,
  end_hour: 18,
  user_id: eric.id,
)
