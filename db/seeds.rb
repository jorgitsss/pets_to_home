# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Comenzando la creación de datos..."
# Generar ciudades
10.times do
  City.create(
    name: Faker::Address.city,
    location: Faker::Address.full_address,
    gps: Faker::Address.latitude
  )
end
puts "creados datos de ciudades"
# Generar propietarios
5.times do
  Proprietary.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
puts "creados datos de propietarios"
# Generar usuarios
10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    id_cities: City.all.sample.id
  )
end
puts "creados datos de usuarios"
# Generar guarderías
20.times do
  Kindergarten.create(
    name: Faker::Company.name,
    description: Faker::Lorem.paragraph,
    #photo: Faker::LoremPixel.image(size: "300x300", is_gray: false, category: 'business'),
    id_cities: City.all.sample.id,
    price: Faker::Commerce.price(range: 100..500),
    phone: Faker::PhoneNumber.phone_number,
    published: Faker::Boolean.boolean,
    id_proprietaries: Proprietary.all.sample.id
  )
end
puts "creados datos de guarderías"

# Generar mascotas
5.times do
  Pet.create(
    name: Faker::Creature::Dog.name,
    type: Faker::Creature::Animal.name,
    size: Faker::Creature::Dog.size,
    gender: Faker::Creature::Dog.gender,
    id_users: User.all.sample.id,
    id_cities: City.all.sample.id
  )
end
puts "creados datos de mascotas"