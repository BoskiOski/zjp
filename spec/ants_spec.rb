#!/usr/bin/env ruby
require_relative '../lib/ants'
require_relative '../lib/board'

describe Ants do 
   context "When calling dodaj_mrowki and given wymiary, plansza, mrowki" do 
      
      it "should add ants to board and return Array" do 
         a = Ants.new 
         b = Board.new
         licznik = 0
         wysokosc = 50
         szerokosc = 100
         wymiary = [50,100]
         mrowki = 60
         plansza = b.wypelnij_plansze(wysokosc, szerokosc)
         expect(a.dodaj_mrowki wymiary, plansza, mrowki).to be_a Array
          
         for i in 0..wysokosc-1
            for j in 0..szerokosc-1
                if plansza[i][j] == "m" then
                    licznik += 1
                end
            end
        end    
       expect(licznik).to eql mrowki
      end 
      
   end 
end