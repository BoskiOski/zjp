#!/usr/bin/env ruby

#Class responsible for creating and printing board.
class Board
	
    def wypelnij_plansze(wysokosc, szerokosc)
        plansza = Array.new(wysokosc) {Array.new(szerokosc)}   
        for i in 0..wysokosc-1
            for j in 0..szerokosc-1
                plansza[i][j] = " "
            end
        end
        return plansza
    end
    
    def rysuj_ramka(szerokosc)
       ramka = "-"  
       for i in 0..szerokosc
            ramka = ramka + "-"
        end 
        puts ramka
    end
    
    def rysuj_plansza(szerokosc, plansza)       
        rysuj_ramka(szerokosc)
        
        plansza.each do |r|
			puts "|" + r.each { |p| p }.join("") + "|"
		end 
        
        rysuj_ramka(szerokosc)
    end
end