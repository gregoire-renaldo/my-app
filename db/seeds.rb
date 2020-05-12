# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning database...'

User.destroy_all



puts 'Creating 50 fake users...'
list = (0..50).to_a
list.each do |num|
    user = User.new(
      email:"#{num}@gmail.com",
      password: 'azerty',
      username: Faker::GreekPhilosophers.name,
      firstname:   Faker::Name.first_name,
      lastname: Faker::Name.last_name,
      bio: "a user bio"
    )
    user.save!
end
puts 'Finished!'


puts 'Finished!'

