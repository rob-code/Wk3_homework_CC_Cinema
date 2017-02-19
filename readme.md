##Robert B's Cinema Homework 

In addition to the core requirements, the app is able to do the following extensions:

- A customer can buy a ticket with buy_ticket instance method i.e. customer1.buy_ticket(film_id). This generates a ticket and saves it in the ticket table, reduces customers funds by the ticket price and updates the customer's record with the new funds value.

- View the films watched by each customer i.e. customer1.films

- View the tickets bought by each customer i.e. customer1.tickets. This is the same query but with clearer output.

- View the customers who have watched a particular film i.e. film1.customers

- Get the total income from all ticket sales i.e use class method Ticket.income     This uses a query with a left join

- Added a new class and table Showtimes so that the tickets table now also references showtime_id. When a customer buys a ticket, the buy_ticket method now requires the film_id and the showtime_id.

- Calculate the most popular time for a film?












##Brief - CodeClan Cinema

Create software that handles bookings for our newly built cinema! 
It's enough if you can call your methods in pry!

###Your app should have:
  - Customers
    - name
    - funds

  - Films
    - title
    - price

  - Tickets
    - customer_id
    - film_id

###Your app should be able to:
  - Create customers, films and tickets
  - CRUD actions (create, read, update, delete) customers, films and tickets.

###Basic extensions:
  - Buying tickets should decrease the funds of the customer by the price
  - Check how many tickets were bought by a customer
  - Check how many customers are going to watch a certain film

###Advanced extensions:
  - Add a new 'time' row for the tickets
    - Write a method that finds out what is the most popular time (most tickets sold) for a given film
  - Add a limit to available tickets.
  - Add any other extensions you think would be great to have at a cinema!










