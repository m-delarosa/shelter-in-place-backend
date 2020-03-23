require 'rest-client'
require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all

# Activity.create(
#     name: "Watch a Movie", 
#     description: "We'll randomly select a movie for you to watch.",
#     activity_type: "passive",
#     resource: "Resource URL goes here ",
#     image: "Movie URL image goes here"
# )
# Activity.create(
#     name: "Do Pushups", 
#     description: "Do three sets of ten pushups.",
#     activity_type: "active",
#     resource: "Resource URL goes here ",
#     image: "Movie URL image goes here"
# )
# Activity.create(
#     name: "Solve a Rubik's Cube", 
#     description: "Learn how to solve a Rubik's Cube.",
#     activity_type: "skill",
#     resource: "Resource URL goes here ",
#     image: "Movie URL image goes here"
# )



   response = RestClient.get(
       "https://api.themoviedb.org/3/discover/movie?api_key=285705a7986e055ff9380dae0af7d28d&sort_by=popularity.desc")

   result = JSON.parse(response)
    result['results'].each do |movie|
        
    Activity.create(
        
        name: movie['title'], 
        description: movie['overview'],
        activity_type: "Watch a Movie",
        resource: "",
        image: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
    )
    end

