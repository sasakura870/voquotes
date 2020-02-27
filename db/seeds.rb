# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  Category.create name: "#{Faker::Games::Pokemon.name} #{i}"
end

10.times do |i|
  celeb = Celebrity.create name: "#{Faker::Artist.name}-#{i}", uri: 'https://www.google.com/'
  10.times do
    q = celeb.quotes.create content: Faker::Quote.matz
    3.times do
      map = q.category_maps.build category_id: Category.all.pluck(:id).sample
      map.save
    end
  end
end
