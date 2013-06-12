Indie Theater
=====

An interactive website for local movie theaters. 

Models
====

Movie
===
Title
Rating
Opening Date
Starring
Director
Runtime
Released_by
Genres
3D? (Boolean)
Poster
carousel_image

has_many showtimes (Datetime)

Showtime
===
-does this need to be an object?
-seats
-tickets

User
===
email
password

belongs to user
-tickets (purchases)
-first name
-last name
-status (1-4 stars, based on $$ spent, computed on the fly)
-reserve a ticket for 24 hours (3rd party payment processor like stripe)

Facebook login
Email signup

Ticket
===
User, Showtime

Admin
===
Users
Forms to add movies
Upload posters
Embed trailers

Features
====
Carousel for front page: https://github.com/appacademy/js-curriculum/blob/master/projects/store.md
Contact Form
Browse Showtimes by Date, Rating, 3D
Movies Index - Now Playing and Coming Soon
Is a particular showtime sold out?
Ability to purchase tickets, concessions
Movie show page has trailer

Bonus Features
===
Search by 

Gameplan
====

Monday
===
Movies
Showtimes

Views
==
Movies Index
Movies Show

Tuesday
===
Movies
Showtimes

Wednesday
===
Showtime
Admin access: add movies, showtimes

Views
==
Showtimes Index (sort by date)
Showtime Create, Update, Destroy
Homepage (Carousel of posters)

Thursday
===
Customer
Ticket

Friday
===
Polish functional features
Deploy to Heroku