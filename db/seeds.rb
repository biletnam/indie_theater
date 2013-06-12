# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
genres = Genre.create([{name: "Action"},
                       {name: "Adventure"},
                       {name: "Animation"},
                       {name: "Biography"},
                       {name: "Comedy"},
                       {name: "Crime"},
                       {name: "Documentary"},
                       {name: "Drama"},
                       {name: "Family"},
                       {name: "Fantasy"},
                       {name: "Film-Noir"},
                       {name: "Game-Show"},
                       {name: "History"},
                       {name: "Horror"},
                       {name: "Music"},
                       {name: "Musical"},
                       {name: "Mystery"},
                       {name: "News"},
                       {name: "Reality-TV"},
                       {name: "Romance"},
                       {name: "Sci-Fi"},
                       {name: "Sport"},
                       {name: "Talk-Show"},
                       {name: "Thriller"},
                       {name: "War"},
                       {name: "Western"}])

ratings = Rating.create([{value: "G"}, 
                         {value: "PG"},
                         {value: "PG-13"},
                         {value: "R"},
                         {value: "NC-17"},
                         {value: "Unrated"}])

movies = Movie.create([{title: "The Internship", 
                        description: "Billy and Nick are salesmen whose careers have been torpedoed by the digital world. Trying to prove they are not obsolete, they defy the odds by talking their way into a coveted internship at Google, along with a battalion of brilliant college students. But, gaining entrance to this utopia is only half the battle. Now they must compete with a group of the nation's most elite, tech-savvy geniuses to prove that necessity really is the mother of re-invention.",
                        rating_id: 3,
                        opening_date: "2013-06-07",
                        starring: "Vince Vaughn, Owen Wilson",
                        director: "Shawn Levy",
                        runtime: 119,
                        released_by: "20th Century Fox",
                        three_d: false,
                        online: true,
                        trailer: "http://www.youtube.com/embed/cdnoqCViqUo?rel=0"},
                        {title: "Now You See Me", 
                        description: "During their performances, the world's greatest illusionists known as \"The Four Horsemen\" pull off a series of daring heists against corrupt business leaders. The super-team of illusionists shower the stolen profits on their audiences while staying one step ahead of an elite FBI squad in a game of cat and mouse.",
                        rating_id: 3,
                        opening_date: "2013-05-31",
                        starring: "Mark Ruffalo, Jesse Eisenberg",
                        director: "Louis Leterrier",
                        runtime: 116,
                        released_by: "Lionsgate Films",
                        three_d: false,
                        online: true,
                        trailer: "http://www.youtube.com/embed/UE5XcjTpsdo?rel=0"},
                        {title: "Man of Steel", 
                        description: "Clark Kent, a young reporter, roams the world covering news stories, but returns home to face his destiny - to become Superman.",
                        rating_id: 3,
                        opening_date: "2013-06-14",
                        starring: "Henry Cavill, Diane Lane",
                        director: "Zack Snyder",
                        runtime: 143,
                        released_by: "Warner Bros. Pictures",
                        three_d: true,
                        online: true,
                        trailer: "http://www.youtube.com/embed/KVu3gS7iJu4?rel=0"},
                        {title: "World War Z", 
                        description: "A sober telling of the aftermath of a war fought against a legion of humans who were inflicted with a virus, died and were re-animated into flesh-eating zombies.",
                        rating_id: 3,
                        opening_date: "2013-06-20",
                        starring: "Brad Pitt, James Badge Dale",
                        director: "Marc Forster",
                        runtime: 116,
                        released_by: "Paramount Pictures",
                        three_d: true,
                        online: true,
                        trailer: "http://www.youtube.com/embed/4EC7P5WdUko?rel=0"}])
                        
movie_genres = MovieGenre.create([{movie_id: 1, genre_id: 5},
                                  {movie_id: 2, genre_id: 24},
                                  {movie_id: 3, genre_id: 1},
                                  {movie_id: 3, genre_id: 2},
                                  {movie_id: 3, genre_id: 10},
                                  {movie_id: 3, genre_id: 21},
                                  {movie_id: 4, genre_id: 1},
                                  {movie_id: 4, genre_id: 2}])
                                  
showtimes = Showtime.create([{time: "2013-06-12T12:00:00-04:00"},
                             {time: "2013-06-12T14:40:00-04:00"},
                             {time: "2013-06-12T15:20:00-04:00"},
                             {time: "2013-06-12T20:00:00-04:00"},
                             {time: "2013-06-12T22:40:00-04:00"},
                             {time: "2013-06-13T12:00:00-04:00"},
                             {time: "2013-06-13T14:40:00-04:00"},
                             {time: "2013-06-13T15:20:00-04:00"},
                             {time: "2013-06-13T20:00:00-04:00"},
                             {time: "2013-06-13T22:40:00-04:00"}])

movie_showtimes = MovieShowtime.create([{movie_id: 1, showtime_id: 1},
                                        {movie_id: 1, showtime_id: 2},
                                        {movie_id: 1, showtime_id: 3},
                                        {movie_id: 1, showtime_id: 4},
                                        {movie_id: 1, showtime_id: 5},
                                        {movie_id: 1, showtime_id: 6},
                                        {movie_id: 1, showtime_id: 7},
                                        {movie_id: 1, showtime_id: 8},
                                        {movie_id: 1, showtime_id: 9},
                                        {movie_id: 1, showtime_id: 10},
                                        {movie_id: 2, showtime_id: 1},
                                        {movie_id: 2, showtime_id: 2},
                                        {movie_id: 2, showtime_id: 3},
                                        {movie_id: 2, showtime_id: 4},
                                        {movie_id: 2, showtime_id: 5},
                                        {movie_id: 2, showtime_id: 6},
                                        {movie_id: 2, showtime_id: 7},
                                        {movie_id: 2, showtime_id: 8},
                                        {movie_id: 2, showtime_id: 9},
                                        {movie_id: 2, showtime_id: 10}])
                                        
admins = Admin.create([{email: "admin@example.com", password: "password", super: true}])