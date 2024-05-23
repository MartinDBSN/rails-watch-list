Movie.destroy_all
puts "Database cleaned"

5.times {
  @movie = Movie.new(title: Faker::Fantasy::Tolkien.character, overview: Faker::Fantasy::Tolkien.poem, poster_url:"https://static.wikia.nocookie.net/seigneur-des-anneaux/images/c/c0/Haldir.jpg/revision/latest?cb=20090724075218&path-prefix=fr", rating: rand(5))
  @movie.save
}
puts "done"
