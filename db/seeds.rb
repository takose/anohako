# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelf.destroy_all
Shelf.create(name: 'keita-lab')

Product.destroy_all
Product.create([
  {name: ' CCレモン', image_url: 'https://i.gyazo.com/8923a942c00c5f582ff517fe4c853e6d.png'},
  {name: 'cainz grape 100%', image_url: 'https://i.gyazo.com/9bb72be24cd6c119fda18c6aa4bba807.png'},
  {name: 'すっきりオレンジ', image_url: 'https://i.gyazo.com/7d293ed3ab38984bf115bd87be1010c8.png'},
  {name: 'lifeguard', image_url: 'https://i.gyazo.com/28aebdeb5abd38a4993c42f391d58a3d.png'},
])

Stock.destroy_all
prices = [160, 140, 110, 100, 120, 140]
Product.all.each_with_index do |p, idx|
  Stock.create(shelf_id: Shelf.first.id, product_id: p.id, price: prices[idx])
end
