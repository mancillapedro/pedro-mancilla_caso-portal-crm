# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users =[
  {email: "admin@gmail.com", password: "291ABASD932"},
  {email: "usuario1@gmail.com", password: "291ABASD934"},
  {email: "usuario2@gmail.com", password: "281ABASD932"}
]

users.each { |user| User.create(user)}





# rails g model Lead name:srting surname:string telephone:string email:string status:string user:references
# rails g model Talk message:text
# rails g model LeadTalk lead:references talk:references user:references
