require_relative("../db/sql_runner")

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
  end

  def save()
    sql = "INSERT INTO customers (customer_id, film_id) VALUES (#{@customer_id}, #{@film_id}) RETURNING id;"
    ticket = SqlRunner.run(sql).first
    @id = ticket['id'].to_i
  end

  def update()
    sql = "UDDATE tickets (customer_id, film_id) SET (#{@customer_id}, #{film_id})"
    SqlRunner.run(sql)
  end

  # def self.return_by_id(return_id)
  #   sql = 
  # end

  # def self.all
  #   sql = 
  # end


  # def delete()
  #   sql = 
  # end

  # def self.delete_all()
  #   sql = 
  # end










end

