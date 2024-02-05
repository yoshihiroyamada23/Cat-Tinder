# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
cats = [
  {
    name: 'Soza',
    age: 2,
    enjoys: 'Long naps on the couch, and a warm fire.',
    image: 'http://tinyurl.com/cozy-fire-cat'
  },
  {
    name: 'YoHiro',
    age: 12,
    enjoys: 'Food mostly, really just food.',
    image: 'http://tinyurl.com/anime-cat-food'
  },
  {
    name: 'Andrew',
    age: 5,
    enjoys: 'Kung Fu fighting.',
    image: 'http://tinyurl.com/andrew-cat-fight'
  },
  {
    name: 'Alex',
    age: 2,
    enjoys: 'Scratching on carpet.',
    image: 'http://tinyurl.com/alex-scratch-cat'
  }
]

cats.each do |each_cat|
  Cat.create each_cat
  puts "creating cat #{each_cat}"
end
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)