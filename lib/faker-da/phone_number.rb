module FakerDa
  class PhoneNumber
    def self.da_phone_number
      FakerDa.numerify(Phone_formats[rand(Phone_formats.length)])
    end
    
    def self.da_cellphone_number
      FakerDa.numerify(Cellphone_formats[rand(Cellphone_formats.length)])
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
