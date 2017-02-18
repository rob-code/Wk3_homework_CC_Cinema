##Robert B's Cinema Homework 

In addition to the basic requirements, the app is able to do the following:

A customer can buy a ticket with buy_ticket instance method i.e. customer1.buy_ticket(film_id). This generates a ticket and saves it in the ticket table, reduces customers funds by the ticket price and updates the customer's record with the new funds value.

View the films watched by each customer i.e. customer1.films

View the tickets bought by each customer i.e. customer1.tickets. This is the same query but with clearer output.

View the customers who have watched film i.e. film1.customers

#To Do:

How much income is taken in by the cinema: Report tickets sold to customers for films and total up the price of tickets











##Brief - CodeClan Cinema

Create a software that handles bookings for our newly built cinema! 
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










