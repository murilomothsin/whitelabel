# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({ name: "Teste", email: "teste@email.com", password: "123456" })

categories = []

0.upto(2).each do |i|
  categories << Category.create({name: "Category #{i}"})
end

0.upto(20).each do |i|
  Product.create({name: "Product #{i}", price: rand(0.5..i+1).round(2), quantity: 5, category: categories[rand(0..2)]})
end