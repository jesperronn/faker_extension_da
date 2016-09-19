module FakerDa
  class Name
    def self.da_name
      DaFormats[rand(DaFormats.length)].call.join(' ')
    end

    # 50 most popular Danish names 2005
    # http://dst.dk/Statistik/Navne/NamesPop.aspx?period=20052
    def self.da_first_name_f
      da_first_name_f = %w(Mathilde Laura Sofie Emma Caroline Freja Ida Sara Julie Anna Cecilie Josefine Maja Clara Katrine Amalie Signe Emilie Lærke Victoria Nanna Marie Alberte Isabella Frida Sofia Maria Mille Frederikke Nicoline Camilla Liva Jasmin Anne Andrea Astrid Thea Rebecca Olivia Lea Louise Johanne Line Alma Tilde Malou Mia Emily Sille Selma)
      da_first_name_f[rand(da_first_name_f.length)]
    end

    # 50 most popular Danish names 2005
    # http://dst.dk/Statistik/Navne/NamesPop.aspx?period=20052
    def self.da_first_name_m
      da_first_name_m = %w(Lucas Magnus Mathias Frederik Oliver Emil Mikkel Victor Tobias Sebastian Mads Nikolaj Rasmus Marcus Christian Noah Jonas Jakob Kasper Oscar Andreas Alexander William Simon Gustav Nicklas Malthe Daniel Benjamin Philip Christoffer Anton Jeppe Anders Lasse Carl Silas Jonathan Marius Elias August Patrick Valdemar Thomas Laurits Bertram Martin David Hjalte Albert)
      da_first_name_m[rand(da_first_name_m.length)]
    end


    # 185 Danish last names  from
    # http://www.familiestyrelsen.dk/navne/1/?no_cache=1
    def self.da_last_name
      da_last_name = %w(Ahmed Ali Andersen Andersson Andreasen Andreassen Andresen Asmussen Bach Bak Bang Bech Beck Bendtsen Berg Bertelsen Berthelsen Bjerre Bjerregård Bjerregaard Bonde Brandt Brodersen Bruun Buch Bundgaard Bundgård Carlsen Carstensen Christensen Christiansen Christoffersen Clausen Dahl Dalgaard Dalgård Dalsgård Dalsgaard Dam Damgaard Damgård Danielsen Davidsen Enevoldsen Eriksen Eskildsen Fischer Frandsen Frederiksen Friis Frost Gade Gregersen Hald Hansen Hedegård Hedegaard Hemmingsen Henningsen Henriksen Hermansen Hjorth Hoffmann Holm Holst Hougård Hougaard Ibsen Iversen Jacobsen Jakobsen Jensen Jeppesen Jepsen Jespersen Jessen Johannesen Johannsen Johansen Johansson Johnsen Juhl Justesen Juul Jønsson Jørgensen Karlsen Kirkegaard Kirkegård Kjeldsen Kjær Kjærgaard Kjærgård Klausen Knudsen Koch Kofoed Kragh Kristensen Kristiansen Kristoffersen Krog Krogh Kruse Lange Larsen Lassen Lauridsen Lauritsen Lauritzen Laursen Laustsen Leth Lind Lorentzen Lorenzen Lund Madsen Markussen Mathiasen Mathiesen Meyer Michelsen Mikkelsen Mogensen Mortensen Munk Müller Mølgård Mølgaard Møller Nguyen Nielsen Nikolajsen Nilsson Nissen Nygaard Nygård Nørgård Nørgaard Olesen Olsen Olsson Overgaard Overgård Paulsen Pedersen Persson Petersen Poulsen Rasmussen Ravn Riis Schmidt Schou Schrøder Schultz Simonsen Skov Sommer Steffensen Svendsen Svensson Søgård Søgaard Søndergård Søndergaard Sørensen Thomassen Thomsen Thorsen Thygesen Thøgersen Toft Vestergaard Vestergård Villadsen Vinther Winther Østergaard Østergård Ågård Ågaard Aagård Aagaard)
      da_last_name[rand(da_last_name.length)]
    end

    def self.da_prefix
      da_prefix = %w(Hr. Fr. Fru Dr.)
      da_prefix[rand(da_prefix.length)]
    end

    DaFormats = [
      Proc.new { [ da_prefix, da_first_name_f, da_last_name ] },
      Proc.new { [ da_prefix, da_first_name_m, da_last_name ] },
      Proc.new { [ da_first_name_f, da_last_name ] },
      Proc.new { [ da_first_name_f, da_last_name ] },
      Proc.new { [ da_first_name_f, da_last_name ] },
      Proc.new { [ da_first_name_f, da_last_name ] },
      Proc.new { [ da_first_name_m, da_last_name ] },
      Proc.new { [ da_first_name_m, da_last_name ] },
      Proc.new { [ da_first_name_m, da_last_name ] },
      Proc.new { [ da_first_name_m, da_last_name ] }
      ]
  end
end
