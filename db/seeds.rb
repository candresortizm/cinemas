# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create(name:"Wall-E",description:"Se desarrolla en el futuro, los humanos son controlados por la tecnología.", image: "https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg")

MovieFunction.create(day: "18-04-2020",movie_id: 1)
MovieFunction.create(day: "19-04-2020",movie_id: 1)
MovieFunction.create(day: "20-04-2020",movie_id: 1)

Reservation.create(name:"Andrés Ortiz", document:"1010101010", email:"candresortizm@gmail.com", movie_function_id: 1)
