# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelf.create(name: 'keita-lab')

Product.create([
  {name: 'redbull', image_url: 'https://i.gyazo.com/13c535a27502bab7647173eb39cea9a0.png'},
  {name: 'monster', image_url: 'https://i.gyazo.com/cc4b757224ee2057247b2a9fbdfd9650.png'}
])

Stock.create([
  {shelf_id: Shelf.first.id, product_id: Product.first.id, price: 200},
  {shelf_id: Shelf.first.id, product_id: Product.second.id, price: 180}
])
