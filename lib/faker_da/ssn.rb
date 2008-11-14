module Faker
  class Ssn
    class << self 
      # Danish social security number has the format ddmmyy-xxxx (this version is without the dash)
      alias_method :da_cpr, :da_ssn
      def da_ssn
        Faker::Time.random_date.strftime("%d%m%y") +
        Faker.numerify('####')
      end
    end
      
   end
end