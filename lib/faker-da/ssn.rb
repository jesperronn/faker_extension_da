module FakerDa
  class Ssn
    #FIXME alias_method :da_cpr, :da_ssn
    # Danish social security number has the format ddmmyy-xxxx (this version is without the dash)
    def self.da_ssn
      FakerDa::Time.random_date.strftime("%d%m%y") +
      FakerDa.numerify('####')
    end
  end
end
