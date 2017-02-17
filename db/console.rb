require_relative( './../models/customer.rb' )
require_relative( './../models/film.rb' )
require_relative( './../models/ticket.rb' )


require('pry')

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({'name' => 'Robert', 'funds' => 30.00})
customer1.save()

customer2 = Customer.new({'name' => 'Jane', 'funds' => 10.00})
customer2.save()

customer3 = Customer.new({'name' => 'Mark', 'funds' => 30.00})
customer3.save()

customer4 = Customer.new({'name' => 'Rachel', 'funds' => 120.00})
customer4.save()



film1 = Film.new({'title' => "Batman", 'price' => 9.50})
film1.save()

film2 = Film.new({'title' => "The Matrix", 'price' => 7.80})
film2.save()


ticket1 = Ticket.new({'customer_id' =>customer1.id, 'film_id' => film1.id})
ticket1.save()

ticket2 = Ticket.new({'customer_id' =>customer2.id, 'film_id' => film2.id})
ticket2.save()

ticket3 = Ticket.new({'customer_id' =>customer3.id, 'film_id' => film1.id})
ticket3.save()

ticket4 = Ticket.new({'customer_id' =>customer4.id, 'film_id' => film2.id})
ticket4.save()

binding.pry
nil