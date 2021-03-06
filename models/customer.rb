require_relative("../db/sql_runner")

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds'].to_f
  end

  def buy_ticket(film_id_required, showtime_id_required)
    film = Film.return_by_id(film_id_required).first
    ticket = Ticket.new({'customer_id' =>@id, 'film_id' =>film_id_required, 'showtime_id' => showtime_id_required})
    ticket.save()
    @funds -= film['price'].to_f
    update()
  end


  def films()
    sql = "SELECT films.*
    FROM films INNER JOIN tickets
    ON films.id = tickets.film_id
    WHERE customer_id = #{@id}"
    return Film.get_many(sql)
  end

  def tickets()
    sql = "SELECT films.*
    FROM films INNER JOIN tickets
    ON films.id = tickets.film_id
    WHERE customer_id = #{@id}"
    films = SqlRunner.run(sql)
    puts "\n \n"
    puts "#{@name} has bought #{films.count} ticket(s):"
    films.map do |film|
     puts "#{film['title']} costing £#{film['price']}"
   end
   puts "\n \n"
 end

 def save()
  sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{@funds}) RETURNING id;"
  customer = SqlRunner.run(sql).first
  @id = customer['id'].to_i
end

  def update()
    sql = "UPDATE customers SET (name, funds) = ('#{@name}', #{@funds}) WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def self.return_by_id(id_required)
   sql = "SELECT * FROM customers WHERE id = #{id_required};"
   SqlRunner.run(sql)
 end

 def self.all
  sql = "SELECT * FROM customers"
  return self.get_many(sql)
end

def self.delete_by_id(id_required)
  sql = "DELETE FROM customers WHERE id = #{id_required};"
  SqlRunner.run(sql)
end

def self.delete_all()
  sql = "DELETE FROM customers"
  SqlRunner.run(sql)
end


def self.get_many(sql)
  customers = SqlRunner.run(sql)
  result = customers.map {|customer| Customer.new(customer)}
  return result
end












end