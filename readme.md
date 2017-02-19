##Robert B's Cinema Homework 

In addition to the core requirements, the app is able to do the following extensions:

- View the films watched by each customer i.e. customer1.films

- View the tickets bought by each customer i.e. customer1.tickets. This is the same query but with clearer output.

- View the customers who have watched a particular film i.e. film1.customers

- Added a new class Showtime and table Showtimes. The tickets table now also references showtime_id. Now when a customer buys a ticket, the buy_ticket() method requires the arguments film_id and showtime_id. This method generates a ticket and saves it in the ticket table, reduces customers funds by the ticket price and updates the customer's record with the new funds value.

- Ticket class method most_popular_time() prints a table of number of ticket sales for each show time and selects the most popular show time. The sql query uses a nested inner join.

- Use class method Ticket.income to get the total income from all ticket sales. This uses a query with a left join.



