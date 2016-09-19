require 'minitest/autorun'
require 'faker-da'

class FakerDaTest < Minitest::Test
  def test_addresses
    assert_equal 2,
      FakerDa::Address.da_zip_and_city.length
    assert_equal true,
      FakerDa::Address.da_zip_code.kind_of?(Fixnum)
    assert_equal true,
      FakerDa::Address.da_city.kind_of?(String)

  end

  def test_names
    assert_equal true,
      FakerDa::Name.da_name.kind_of?(String)
  end

  def test_phone_numbers
    assert_equal true,
      FakerDa::PhoneNumber.da_phone_number.kind_of?(String)
    assert_equal true,
      FakerDa::PhoneNumber.da_cellphone_number.kind_of?(String)
    assert_equal 9,
      FakerDa::PhoneNumber.da_phone_number.length
    assert_equal 9,
      FakerDa::PhoneNumber.da_cellphone_number.length
  end

  def test_ssns
    assert_equal 10,
      FakerDa::Ssn.da_ssn.length
  end

  def test_times
    assert_equal true,
      FakerDa::Time.random_date.kind_of?(Date)
  end
end
