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
Homepage (Carousel of posters)
Movies Index
Movies Show
Showtimes Index (sort by date)

Tuesday
===
Admin access: add movies, showtimes

Wednesday
===
Customer
Ticket

Thursday
===
Ticket Purchasing

Friday
===
Polish functional features
Deploy to Heroku