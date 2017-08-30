# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

cat1 = Category.create!(name: "Categoría 1", discount: 20)
cat2 = Category.create!(name: "Categoría 2", discount: 15)
cat3 = Category.create!(name: "Categoría 3", discount: 40)

cat1.products.build(name: "Producto 1", price: 1990).save
cat2.products.build(name: "Producto 2", price: 2990).save
cat3.products.build(name: "Producto 3", price: 5990).save

Product.create!(name: "Producto 4", price: 3599, category_id: cat1.id)
Product.create!(name: "Producto 5", price: 11999, category_id: cat2.id)
Product.create!(name: "Producto 6", price: 35990, category_id: cat3.id)

Product.last.destroy

prod = Product.last
prod.premium = true
prod.save

Category.all.each do |category|
  category.name = category.name.upcase
  category.save
end

