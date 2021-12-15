# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

france = Country.create(name: "France")
italy = Country.create(name: "Italy")
germany = Country.create(name: "Germany")

france.wines.create(title: "French Wine", price: 900, wine_category: "White", year: 1991)
france.wines.create(title: "French Red", price: 100, wine_category: "Red", year: 1988)
italy.wines.create(title: "Italy Red", price: 110, wine_category: "Red", year: 1978)
italy.wines.create(title: "Italy Something", price: 88, wine_category: "Pinot", year: 1978)
germany.wines.create(title: "German Reisling", price: 188, wine_category: "Resiling", year: 1999)
