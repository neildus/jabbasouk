# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.destroy_all

Product.create!([{
  user_id: 1,
  title: "Lightsaber",
  price: "40000",
  description: "A fully functional lightsaber that was taken from a jedi dead body.",
  photo: "https://wohomedia.b-cdn.net/lewagon/jabbasouk/lightsaber.png"
},
{
  user_id: 1,
  title: "Boring Droid",
  price: "5600",
  description: "A useless droid, which will looks great in your appartment.",
  photo: "https://wohomedia.b-cdn.net/lewagon/jabbasouk/c3po.png"
},
{
  user_id: 1,
  title: "BB-8",
  price: "5600",
  description: "In very good condition. This droid is the perfect companion.",
  photo: "https://wohomedia.b-cdn.net/lewagon/jabbasouk/bb8.png"
},
{
  user_id: 1,
  title: "Trooper Helmet",
  price: "2000",
  description: "Riding a space bike? Get cooler with this helmet.",
  photo: "https://wohomedia.b-cdn.net/lewagon/jabbasouk/stormtrooper.png"
},
{
  user_id: 1,
  title: "Death Star",
  price: "5000",
  description: "okay, it's not the real one, but it's still a cool toy.",
  photo: "https://wohomedia.b-cdn.net/lewagon/jabbasouk/deathstar.png"
},
{
  user_id: 1,
  title: "Crunchie Ewok",
  price: "600",
  description: "In a soup or roasted, this Ewok will be delicious.",
  photo: "https://wohomedia.b-cdn.net/lewagon/jabbasouk/funnyewok.png"
},
{
  user_id: 1,
  title: "Baby Yoda",
  price: "600",
  description: "The cutest thing in the galaxy. You will love it.",
  photo: "https://wohomedia.b-cdn.net/lewagon/jabbasouk/babyyoda.png"
  
}])

p "Created #{Product.count} products"
