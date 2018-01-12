#!/usr/bin/env ruby
require_relative 'board'
require_relative 'ants'

class AntHill

	def initialize
		@wysokosc = ARGV[0].to_i
		@szerokosc = ARGV[1].to_i
        @mrowki = ARGV[2].to_i 
        @board = Board.new
        @ants = Ants.new    
	end	
    
    def start
      plansza = @board.wypelnij_plansze(@wysokosc, @szerokosc)
      plansza = @ants.dodaj_mrowki(@wysokosc, @szerokosc, plansza, @mrowki)
      
      while true do    
      plansza = @ants.mrowki_sie_poruszaja(@wysokosc, @szerokosc, plansza)    
      end    
    end
    
end
ah = AntHill.new
ah.start