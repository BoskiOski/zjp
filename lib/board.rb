#!/usr/bin/env ruby

#Class responsible for creating and printing board.
class Board
   
    def initialize
        @plansza = Array.new()
    end
   
    def wypelnij_plansze(wysokosc, szerokosc) 
        for i in 0..wysokosc-1
            @plansza[i] = Array.new()
            for j in 0..szerokosc-1
                @plansza[i][j] = " "
            end
        end
       
        return @plansza
    end
   
    def rysuj_ramka(szerokosc)
       ramka = "-" 
       for i in 0..szerokosc
            ramka = ramka + "-"
        end
        puts ramka
    end
   
    def rysuj_plansza(wymiary, plansza)      
        rysuj_ramka(wymiary[1])
       
           for i in (0..wymiary[0]-1)
            print "|"
            for j in (0..wymiary[1]-1)
                print plansza[i][j]
            end
            print "|\n"
        end
       
        rysuj_ramka(wymiary[1])
    end
end