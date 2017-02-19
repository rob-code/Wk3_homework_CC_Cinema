require_relative("../db/sql_runner")

class Showtime

  attr_reader :id
  attr_accessor :showtime

def initialize(options)
  @id = options['id'].to_i
  @showtime = options['showtime']
end

 def save()
  sql = "INSERT INTO showtimes (showtime) VALUES ('#{@showtime}') RETURNING id;"
showtime = SqlRunner.run(sql).first
  @id = showtime['id'].to_i
end

def update()
  sql = "UPDATE showtimes SET (showtime) = ('#{@showtime}') WHERE id = #{@id}"
  SqlRunner.run(sql)
end

 def self.return_by_id(id_required)
  sql = "SELECT * FROM showtimes WHERE id = #{id_required};"
  SqlRunner.run(sql)
end

 def self.all
  sql = "SELECT * FROM showtimes"
  return self.get_many(sql)
end

def self.delete_by_id(id_required)
  sql = "DELETE FROM showtimes WHERE id = #{id_required};"
  SqlRunner.run(sql)
end

def self.delete_all()
  sql = "DELETE FROM showtimes"
  SqlRunner.run(sql)
end

def self.get_many(sql)
  showtimes = SqlRunner.run(sql)
  result = showtimes.map {|showtime| Showtime.new(showtime)}
  return result
end


end