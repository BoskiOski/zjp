#!/usr/bin/env ruby
require_relative '../lib/board'

describe Ants do 
   context "When calling rysuj_plansza and given wymiary, plansza" do 
      
      it "should print board" do 
         b = Board.new
         wysokosc = 50
         szerokosc = 100
         wymiary = [50,100]
         plansza = b.wypelnij_plansze(wysokosc, szerokosc)
         expect{b.rysuj_plansza wymiary, plansza}.to_not raise_error
      end 
      
   end 
end