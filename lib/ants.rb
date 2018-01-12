#!/usr/bin/env ruby
require_relative 'board'

class Ants
    
    def initialize
        @board = Board.new   
	end	
    
    def dodaj_mrowki(wyskosc,szerokosc, plansza, mrowki)
        
        for i in 1..mrowki
            plansza[rand(0..wysokosc)][rand(0..szerokosc)] = "m"
        end     
        
        @board.rysuj_plansza(szerokosc, plansza)
        
        return plansza
    end
    
    
    def mrowki_sie_poruszaja(wysokosc, szerokosc, plansza)
        sleep(2)
        system "clear"
        for i in 0..wysokosc-1
            for j in 0..szerokosc-1
                if plansza[i][j] == "m" then
                    plansza[i][j] = " "
                    ii = rand(i-1..i+1)
                    jj = rand(j-1..j+1)
                        if plansza [ii][jj] == "m" then
                            next
                        end
                        if ii.between?(0, wysokosc-1) && jj.between?(0, szerokosc-1) then
                            plansza[ii][jj] = "m"
                        end  
                end
            end
        end    
        @board.rysuj_plansza(szerokosc, plansza)          
        return plansza
    end
end