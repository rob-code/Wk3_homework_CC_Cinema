require_relative("../db/sql_runner")

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price'].to_f
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING id;"
    film = SqlRunner.run(sql).first
    @id = film['id'].to_i
  end

  def update()
    sql = "UDPDATE films (title, price) SET (#{'@title'}, #{@price}) WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  # def self.return_by_id(return_id)
  #   sql = 
  # end

  def self.all
  sql = "SELECT * FROM films"
  return self.get_many(sql)
  end


  # def delete()
  #   sql = 
  # end

  def self.delete_all()
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end


  def self.get_many(sql)
    films = SqlRunner.run(sql)
    result = films.map {|film| Film.new(film)}
    return result
  end

end