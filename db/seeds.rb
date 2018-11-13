# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cards = JSON.parse(File.read('db/db.json'))

cards.each do |card|
  Card.create(card.to_h)
end

user1 = User.create(username: 'chelsea', password:'hi')
user2 = User.create(username: 'trung', password:'hi')
user3 = User.create(username: 'jonathan', password:'hi')

