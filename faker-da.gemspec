require './lib/faker-da/version'

Gem::Specification.new do |s|
  s.name        = 'faker-da'
  s.version     = FakerDa::VERSION
  s.date        = '2016-01-22'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Viktor Lesyk", "Jesper Rønn-Jensen"]
  s.email       = 'vee.lesyk@gmail.com'
  s.files       = ["lib/faker-da.rb", "lib/faker-da/address.rb", "lib/faker-da/name.rb", "lib/faker-da/phone_number.rb", "lib/faker-da/ssn.rb", "lib/faker-da/time.rb"]
  s.require_paths = ["lib"]
  s.homepage    = 'http://rubygems.org/gems/hola'
  s.license       = 'MIT'
end
