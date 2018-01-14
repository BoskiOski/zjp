#!/usr/bin/env ruby
require_relative 'board'
require_relative 'ants'

#Main class responsible for reading data from console, and calling methods contained in another classes.
class AntHill

    
    
	def initialize 
        @board = Board.new
        @ants = Ants.new   
        @wymiary = [ARGV[0].to_i, ARGV[1].to_i]
	end	
    
    def start
      plansza = @board.wypelnij_plansze(@wymiary)
      plansza = @ants.dodaj_mrowki(@wymiary, plansza, ARGV[2].to_i)
      @board.rysuj_plansza(@wymiary, plansza) 
      while true do    
      plansza = @ants.mrowki_sie_poruszaja(@wymiary, plansza)    
      @board.rysuj_plansza(@wymiary, plansza)  
      end    
    end
    
end
ah = AntHill.new
ah.start