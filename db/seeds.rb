# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: "mykola@example.com",
             password: "password",
             password_confirmation: "password")

User.create!(email: "zarubin@example.com",
             password: "password",
             password_confirmation: "password")

Project.create!(name: "first",
                status: 1)

Project.create!(name: "second",
                status: 2)

Project.create!(name: "third",
                status: 3)
