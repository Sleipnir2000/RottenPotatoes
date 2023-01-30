# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.delete_all
Movie.create(title: "M3GAN", rating: "G", released_date: "2022-09-14")
Movie.create(title: "Succession", rating: "G", released_date: "2011-03-23")