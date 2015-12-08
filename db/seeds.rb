User.destroy_all
Location.destroy_all
Coupon.destroy_all
Category.destroy_all

admin = User.create(
  name: 'Alfredo',
  last_name: 'Lobos',
  user_name: 'wolf',
  address: 'Los leones 2835',
  email: 'admin@discount.com',
  avatar: Faker::Lorem.words,
  password: 'password',
  role: 0
)

users = []

(1..10).each do |i|
  users << User.create(
    name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_name: Faker::Internet.user_name,
    address: Faker::Address.street_name,
    email: "client_#{i}@mail.com",
    remote_avatar_url: 'http://lorempixel.com/1200/800',
    password: 'password',
    role: 1
  )
end


categories = []

categories << Category.create(name: 'Alimentos')
categories << Category.create(name: 'Deportes')
categories << Category.create(name: 'Hobbies')
categories << Category.create(name: 'Libros')
categories << Category.create(name: 'Tecnologia')
categories << Category.create(name: 'Belleza')
categories << Category.create(name: 'Juguetes')
categories << Category.create(name: 'Espectaculos')
categories << Category.create(name: 'Video Games')
categories << Category.create(name: 'Musica')
categories << Category.create(name: 'Peliculas')
categories << Category.create(name: 'Moda')


locations = []

40.times do |p|
  locations << Location.create(
    store: Faker::Company.name,
    address: Faker::Address.street_name,
    latitude: Faker::Number.between(1, 20),
    longitude: Faker::Number.between(1, 20),
    
    #remote_image_url: 'http://lorempixel.com/1200/800'
  )
end

coupons = []

50.times do |r|
  coupons << Coupon.create(
    title: Faker::Hacker.say_something_smart,
    description: Faker::Hacker.say_something_smart,
    value: Faker::Number.between(1, 20),
    expiration: Faker::Number.between(1, 20),
    remote_photo_url: 'http://lorempixel.com/400/200/sports/'
  )
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
