module Faker
  class Ssn
    class << self 
      #FIXME alias_method :da_cpr, :da_ssn
      # Danish social security number has the format ddmmyy-xxxx (this version is without the dash)
      def da_ssn
        Faker::Time.random_date.strftime("%d%m%y") +
        Faker.numerify('####')
      end
    end
      
   end
end