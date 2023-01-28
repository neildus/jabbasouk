# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.destroy_all

Product.create!([{
  title: "Lightsaber",
  price: "400",
  description: "A fully functional lightsaber that was taken from a jedi dead body."
},
{
  title: "Boring Droid",
  price: "5600",
  description: "A useless droid, which will looks great in your appartment."
},
{
  title: "Ewok leg",
  price: "200",
  description: "An Ewok leg which will taste perfectly with some marinated space BBQ sauce."
}])

p "Created #{Product.count} products"
