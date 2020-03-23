# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all

Activity.create(
    name: "Watch a Movie", 
    description: "We'll randomly select a movie for you to watch.",
    type: "passive",
    resource: "Resource URL goes here ",
    image: "Movie URL image goes here"
)
Activity.create(
    name: "Do Pushups", 
    description: "Do three sets of ten pushups.",
    type: "active",
    resource: "Resource URL goes here ",
    image: "Movie URL image goes here"
)
Activity.create(
    name: "Solve a Rubik's Cube", 
    description: "Learn how to solve a Rubik's Cube.",
    type: "skill",
    resource: "Resource URL goes here ",
    image: "Movie URL image goes here"
)