module Faker
  class Time
    class << self
        require 'date'
  
        def random_date_for_month(month, year = Time.now.year)
          Date.new( year, month, random_day_of_month( year, month ) )
        end
  
        def random_time_for_date(year, month, day)
          Time.local( year, month, day, rand(24), rand(60), rand(60) )
        end
  
        def random_time_in_month(month, year = Time.now.year)
          Time.local( year, month, self.random_day_of_month( year, month ), rand(24), rand(60), rand(60) )
        end
  
        def days_in_month(year, month)
          (Date.new( year, 12, 31 ) << ( 12 - month )).day
        end
  
        def random_day_of_month(year, month)
          rand( days_in_month( year, month ) ) + 1
        end
        
        def random_day_of_year(year)
          random_date_for_month(random_month, year)
        end
        
        def random_month
          (1..12).to_a.rand
        end
        
        def random_date(first_year=1960, last_year=2000)
          random_day_of_year( (first_year..last_year).to_a.rand )
        end
      end
  end
end