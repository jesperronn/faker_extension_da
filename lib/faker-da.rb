require 'faker-da/address'
require 'faker-da/name'
require 'faker-da/phone_number'
require 'faker-da/ssn'
require 'faker-da/time'

module FakerDa
  def self.numerify string
    string.length.times do |s|
      if string[s] == "#"
        string[s] = "#{rand(9)}"
      end
    end
    string
  end
end
