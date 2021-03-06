require_relative( './../models/customer.rb' )
require_relative( './../models/film.rb' )
require_relative( './../models/ticket.rb' )
require_relative( './../models/showtime.rb' )


require('pry')

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()
Showtime.delete_all()

showtime1 = Showtime.new({'showtime' => '15:00'})
showtime1.save
showtime2 = Showtime.new({'showtime' => '18:00'})
showtime2.save
showtime3 = Showtime.new({'showtime' => '20:30'})
showtime3.save

customer1 = Customer.new({'name' => 'Robert', 'funds' => 30.00})
customer1.save()

customer2 = Customer.new({'name' => 'Jane', 'funds' => 10.00})
customer2.save()

customer3 = Customer.new({'name' => 'Mark', 'funds' => 30.00})
customer3.save()

customer4 = Customer.new({'name' => 'Rachel', 'funds' => 120.00})
customer4.save()



film1 = Film.new({'title' => "Batman", 'price' => 7.80})
film1.save()

film2 = Film.new({'title' => "The Matrix", 'price' => 12.50})
film2.save()


ticket1 = Ticket.new({'customer_id' =>customer1.id, 'film_id' => film1.id, 'showtime_id' => showtime1.id})
ticket1.save()

ticket2 = Ticket.new({'customer_id' =>customer2.id, 'film_id' => film2.id, 'showtime_id' => showtime2.id})
ticket2.save()

ticket3 = Ticket.new({'customer_id' =>customer3.id, 'film_id' => film1.id, 'showtime_id' => showtime2.id})
ticket3.save()

ticket4 = Ticket.new({'customer_id' =>customer4.id, 'film_id' => film2.id, 'showtime_id' => showtime2.id})
ticket4.save()

ticket5 = Ticket.new({'customer_id' =>customer1.id, 'film_id' => film2.id, 'showtime_id' => showtime3.id})
ticket5.save()

ticket6 = Ticket.new({'customer_id' =>customer2.id, 'film_id' => film1.id, 'showtime_id' => showtime3.id})
ticket6.save()

ticket7 = Ticket.new({'customer_id' =>customer2.id, 'film_id' => film1.id, 'showtime_id' => showtime3.id})
ticket7.save()

ticket8 = Ticket.new({'customer_id' =>customer4.id, 'film_id' => film2.id, 'showtime_id' => showtime2.id})
ticket8.save()

binding.pry
nil