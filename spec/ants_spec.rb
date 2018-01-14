#!/usr/bin/env ruby
require_relative '../lib/ants'
require_relative '../lib/board'



describe Ants do
  describe "ants_test" do
  
     describe "When calling mrowki_sie_poruszaja" do
      it "ants moved" do
          a = Ants.new
          b = Board.new
          wymiary = [20,40]
          mrowki = 200
          plansza = b.wypelnij_plansze(wymiary)
          plansza = a.dodaj_mrowki(wymiary, plansza, mrowki)
          plansza_temp = Marshal.load(Marshal.dump(plansza))
          plansza = a.mrowki_sie_poruszaja(wymiary, plansza)        
          expect(plansza).to_not eq (plansza_temp)
          expect(a.mrowki_sie_poruszaja wymiary, plansza).to be_a Array
      end
    end
     
     
    describe "When calling dodaj_mrowki and given wymiary, plansza, mrowki" do
      it "should add ants to board and return Array" do
        a = Ants.new
         b = Board.new
         licznik = 0
         wymiary = [50,100]
         mrowki = 60
         plansza = b.wypelnij_plansze(wymiary)
         expect(a.dodaj_mrowki wymiary, plansza, mrowki).to be_a Array
         
         for i in 0..wymiary[0]-1
            for j in 0..wymiary[1]-1
                if plansza[i][j] == "m" then
                    licznik += 1
                end
            end
        end   
       expect(licznik).to eql mrowki
      end
    end      
       
  end
end

