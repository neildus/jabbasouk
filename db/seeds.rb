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
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1675178727/lightsaber_qdzlht.png",
  star: 5
},
{
  user_id: 1,
  title: "Boring Droid",
  price: "5600",
  description: "A useless droid, which will looks great in your appartment.",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1675178725/c3po_aq5tq4.png",
  star: 3
},
{
  user_id: 1,
  title: "BB-8",
  price: "5600",
  description: "In very good condition. This droid is the perfect companion.",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1675178726/bb8_euvwua.png",
  star: 4
},
{
  user_id: 1,
  title: "Trooper Helmet",
  price: "2000",
  description: "Riding a space bike? Get cooler with this helmet.",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1675178725/stormtrooper_rmanxa.jpg",
  star: 2
},
{
  user_id: 1,
  title: "Death Star",
  price: "5000",
  description: "okay, it's not the real one, but it's still a cool toy.",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1675178727/deathstar_nezhrv.png",
  star: 5
},
{
  user_id: 1,
  title: "Crunchie Ewok",
  price: "600",
  description: "In a soup or roasted, this Ewok will be delicious.",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1675178725/ewok_kdoerx.png",
  star: 1
},
{
  user_id: 1,
  title: "Baby Yoda",
  price: "600",
  description: "The cutest thing in the galaxy. You will love it.",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1675178725/babyyoda_ohxa7x.png",
  star: 5

}])

p "Created #{Product.count} products"
