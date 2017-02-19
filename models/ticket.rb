require_relative("../db/sql_runner")

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id, :showtime_id

  def initialize(options)
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
    @showtime_id = options['showtime_id'].to_i
  end

  def self.mpt() #most_popular_time
    sql = "SELECT showtimes.showtime, films.title, films.price FROM tickets INNER JOIN showtimes ON showtimes.id = tickets.showtime_id INNER JOIN films ON films.id = tickets.film_id;"
    values_array = SqlRunner.run(sql)
    times = []
    #make an array of the showtimes
    values_array.map do |each|
      times.push(each['showtime'])
    end

    showtimes = times.uniq
    #get the numberof times each showtime occurs:
    puts""
    puts "The number of tickets sold for each showtime:"
    showtimes.map do |showtime|
      puts "#{showtime} : No. of tickets = #{times.count(showtime)}"
    end
puts ""
puts "The most popular time for watching films is:"


  end


  def self.income()
    sql = "SELECT films.* FROM films LEFT JOIN tickets ON films.id = tickets.film_id;"
    films = SqlRunner.run(sql)
    puts "\n \n"
    puts "The cinema has sold a total of #{films.count} tickets:"
    total_income = 0
    films.map do |film|
      puts "#{film['title']} costing £ #{film['price']}"
      total_income += film['price'].to_f
    end
    puts "\nTOTAL INCOME : £ #{sprintf("%.2f", total_income)}"
    puts ""
  end


  def save()
    sql = "INSERT INTO tickets (customer_id, film_id, showtime_id) VALUES (#{@customer_id}, #{@film_id}, #{@showtime_id}) RETURNING id;"
    ticket = SqlRunner.run(sql).first
    @id = ticket['id'].to_i
  end

  def update()
    sql = "UPDATE tickets SET (customer_id, film_id, showtime_id) = (#{@customer_id}, #{film_id}, #{@showtime_id})"
    SqlRunner.run(sql)
  end

  def self.return_by_id(id_required)
     sql = "SELECT * FROM tickets WHERE id = #{id_required};"
     SqlRunner.run(sql)
  end

  def self.all
  sql = "SELECT * FROM tickets"
  return self.get_many(sql)
  end


  def self.delete_by_id(id_required)
    sql = "DELETE FROM tickets WHERE id = #{id_required};"
    SqlRunner.run(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end

  def self.get_many(sql)
    tickets = SqlRunner.run(sql)
    result = tickets.map {|ticket| Ticket.new(ticket)}
    return result
  end


end

