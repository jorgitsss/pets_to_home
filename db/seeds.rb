# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  Guarderia.create(
    nombre: Faker::Company.name,
    direccion: Faker::Address.full_address,
    telefono: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    # Otros campos
  )
end