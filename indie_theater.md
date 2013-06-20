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
Admin access: add movies, showtimes, add other admins
Super admin can add, delete other admins

Views
==
Showtimes Index (sort by date)
Showtime Create, Update, Destroy


Thursday
===
Customer: basic login
Ticket

Views
Homepage (Carousel of posters)

Friday
===
Polish functional features
Bonus: customer facebook login, leave reviews, share

Deploy to Heroku


Week 2
====

Features for this week:

Fixes

Improvements
"Are you sure?" buttons for account deletion

Optional
-share
-Contact Form
-Dropdown on "My Account" navbar element

Monday
===
-Heroku pinger: https://github.com/thoughtpolice/heroku-ping
-Add nav to Carousel
-Add placeholder contact, about page
-Seed it with showtimes for the next month (1 per day)
-How do you ensure two movies don't play on the screen at the same time? (Do you worry about that?)
-Prettify all forms

Tuesday
===
-Fix mail sending

-Customer facebook login: https://github.com/plataformatec/devise/wiki/OmniAuth%3A-Overview and http://tammersaleh.com/posts/managing-heroku-environment-variables-for-local-development 
-leave reviews
-Clean up routes

Wednesday
===
-Add Caching
AJAX comments using UJS


Thursday
===
AJAX star rating system
Pre-fetch relevant data during SQL queries in controller

Friday
===