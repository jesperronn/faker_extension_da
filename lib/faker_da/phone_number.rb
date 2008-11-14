module Faker
  class PhoneNumber
    class << self
      def da_phone_number
        Faker.numerify(Phone_formats.rand)
      end
      def da_cellphone_number
        Faker.numerify(Cellphone_formats.rand)
      end
    end
      
    
    Phone_formats = [
      '3### ####',
      '4### ####',
      '6### ####',
      '9### ####'
  	]
    Cellphone_formats = [
      '2### ####',
      '5### ####'
  	]
  end
end