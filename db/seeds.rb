# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movies = Movie.create([{title: "The Internship", 
                        description: "Billy and Nick are salesmen whose careers have been torpedoed by the digital world. Trying to prove they are not obsolete, they defy the odds by talking their way into a coveted internship at Google, along with a battalion of brilliant college students. But, gaining entrance to this utopia is only half the battle. Now they must compete with a group of the nation's most elite, tech-savvy geniuses to prove that necessity really is the mother of re-invention.",
                        rating: "PG-13",
                        opening_date: "2013-06-07",
                        starring: "Vince Vaughn, Owen Wilson",
                        director: "Shawn Levy",
                        runtime: 119,
                        released_by: "20th Century Fox",
                        genres: "Comedy",
                        three_d: false}])