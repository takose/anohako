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
  {name: 'wonda', image_url: '/images/wonda.png'},
  {name: 'cocacola', image_url: '/images/cola.png'},
  {name: 'georgia black', image_url: '/images/black.png'},
  {name: '十六茶', image_url: '/images/sixteen.png'},
  {name: '三ツ矢サイダー', image_url: '/images/sider.png'},
  {name: 'おーいお茶', image_url: '/images/tea.png'},
])

Stock.destroy_all
prices = [160, 140, 110, 100, 120, 140]
Product.all.each_with_index do |p, idx|
  Stock.create(shelf_id: Shelf.first.id, product_id: p.id, price: prices[idx])
end
