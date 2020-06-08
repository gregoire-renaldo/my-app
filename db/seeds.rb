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
Game.destroy_all
GameSession.destroy_all


puts 'Creating 50 fake users...'
list = (0..50).to_a
list.each do |num|
    user = User.new(
      email:"#{num}@gmail.com",
      password: 'azerty',
      username: Faker::GreekPhilosophers.name,
      first_name:   Faker::Name.first_name,
      last_name: Faker::Name.last_name,
    )
    user.save!
end
puts 'Finished!'

puts 'Creating game mode'
commander = Game.new(
  name: 'commander',
  description: 'a fun game 100 cards',)
commander.save!

brawl = Game.new(
  name:'brawl',
  description: 'a fun game 60 cards',
)
brawl.save!



puts 'Creating 30 gamesessions...'
30.times do
  gamesessions = GameSession.new(
    user_id: rand(1..50),
    start_time: Faker::Date.between(from: 2.days.ago, to: Date.today),
    end_time: Faker::Date.forward(days: 10),
    min_players: rand(2..3),
    max_players: rand(3..6),
    description: Faker::Quote.famous_last_words,
    game_id: rand(1..2),
  )
  gamesessions.save!
end
puts 'Finished!'
