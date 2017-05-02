require( 'pg' )

class SqlRunner

  def self.run( sql )
    begin
      db = PG.connect("dbname=dbvi971rrphmlh host=ec2-54-225-71-119.compute-1.amazonaws.com port=5432 user=isrsglcvinnqni password=7a43fa6b88e73501cf82958be3107d97116fa576a413908ac77f8126b63d49b6 sslmode=require")
      result = db.exec( sql )
    rescue PG::Error => e
      puts "***********"
      puts e
      puts "***********"
    ensure
      db.close
    end
    return result
  end

end
