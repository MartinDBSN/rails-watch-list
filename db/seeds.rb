Movie.destroy_all
puts "Database cleaned"

# 5.times {
#   @movie = Movie.new(title: Faker::Fantasy::Tolkien.character, overview: Faker::Fantasy::Tolkien.poem, poster_url:"https://static.wikia.nocookie.net/seigneur-des-anneaux/images/c/c0/Haldir.jpg/revision/latest?cb=20090724075218&path-prefix=fr", rating: rand(5))
#   @movie.save
# }
# puts "done"
Movie.destroy_all
puts "Database clean! :savon::savon::savon:"
movies = [
  {
    title: "12 Angry Men",
    overview: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.",
    poster_url: "https://image.tmdb.org/t/p/original/7sf9CgJz30aXDvrg7DYYUQ2U91T.jpg",
    rating: 9.0
},
{
    title: "Troy",
    overview: "An adaptation of Homer's great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.",
    poster_url: "https://image.tmdb.org/t/p/original/tubJ7SCY84J3g0cLHL8fPjxnKbb.jpg",
    rating: 7.3
},
{
    title: "King Arthur",
    overview: "A demystified take on the tale of King Arthur and the Knights of the Round Table.",
    poster_url: "https://image.tmdb.org/t/p/original/rbJ7nRHUEzxl25IfK1f0T2jnzcw.jpg",
    rating: 6.3
},

  {
    title: 'Pulp Fiction',
    overview: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
    poster_url: 'https://static.displate.com/280x392/displate/2024-03-25/ea7872b16c88a7b5e86d4178b477d802_e2ab24e2aa74b99aece00d675c7e978d.jpg',
    rating: 8.9
  },
  {
    title: 'Fight Club',
    overview: 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.',
    poster_url: 'https://img.fruugo.com/product/0/08/14290080_max.jpg',
    rating: 8.8
  },
  {
    title: 'Forrest Gump',
    overview: 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold.',
    poster_url: 'https://image.tmdb.org/t/p/original/tqfdw48d74spVGmqlZ6rRyOywUM.jpg',
    rating: 8.8
  },
  {
    title: 'The Godfather',
    overview: "An organized crime dynasty's aging patriarch transfers control of his clandestine empire to his reluctant son.",
    poster_url: 'https://image.tmdb.org/t/p/original/3bhkrj58Vtu7enYsRolD1fZdja1.jpg',
    rating: 10
  },
  {
    title: 'The Matrix',
    overview: 'A computer hacker learns from mysterious rebels about the true nature of his reality',
    poster_url: 'https://www.vintagemovieposters.co.uk/wp-content/uploads/2023/08/IMG_4592-scaled.jpeg',
    rating: 8.7
  },
  {
    title: 'Interstellar',
    overview: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
    poster_url: 'https://image.tmdb.org/t/p/original/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg',
    rating: 8.6
  },
  {
    title: 'Gladiator',
    overview: 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family',
    poster_url: 'https://i.ebayimg.com/images/g/TdkAAOSw51lmEuBW/s-l1600.jpg',
    rating: 8.5
  },
  {
    title: "Star Wars: Episode I - The Phantom Menace",
    overview: "Two Jedi escape a hostile blockade to find allies and come across a young boy who may bring balance to the Force, but the long-dormant Sith resurface to reclaim their old glory.",
    poster_url: "https://image.tmdb.org/t/p/original/6wkfovpn7Eq8dYNKaG5PY3q2oq6.jpg",
    rating: 6.5
},
{
    title: "Midnight in Paris",
    overview: "While on a trip to Paris with his fiancée's family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s every day at midnight.",
    poster_url: "https://image.tmdb.org/t/p/original/4wBG5kbfagTQclETblPRRGihk0I.jpg",
    rating: 7.5
},
{
    title: "Once Upon a Time in America",
    overview: "A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.",
    poster_url: "https://image.tmdb.org/t/p/original/i0enkzsL5dPeneWnjl1fCWm6L7k.jpg",
    rating: 8.4
}

]
movies.each do |movie|
  Movie.create!(movie)
end
puts "Created #{Movie.count} movies!"
