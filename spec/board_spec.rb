#!/usr/bin/env ruby
require_relative '../lib/board'

describe Board do 
   context "When calling rysuj_plansza and given wymiary, plansza" do 
      
      it "should print board" do 
         b = Board.new
         wysokosc = 2
         szerokosc = 2
         wymiary = [2,2]
         plansza = b.wypelnij_plansze(wysokosc, szerokosc)
         expect{b.rysuj_plansza wymiary, plansza}.to output("----\n|  |\n|  |\n----\n").to_stdout
      end 
      
   end 
end