# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_1 = User.create(email: "admin@gmail.com", password: "291ABASD932")
user_2 = User.create(email: "usuario1@gmail.com", password: "291ABASD934")
user_3 = User.create(email: "usuario2@gmail.com", password: "281ABASD932")

users = User.all
status = ["Prospecto", "Interesado", "Cliente"]

10.times do
  lead = Lead.create(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    telephone: Faker::PhoneNumber.cell_phone_in_e164,
    email: Faker::Internet.email,
    user: users.sample,
    status: status.sample
  )
  rand(0..5).times do
    talk = Talk.create(message: Faker::Quote.famous_last_words)
    LeadTalk.create(talk: talk, lead: lead, user: users.sample)
  end
end
