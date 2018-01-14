#!/usr/bin/env ruby
require_relative '../lib/board'

describe Board do 
    describe "Board tests" do
   describe "When calling rysuj_plansza and given wymiary, plansza" do 
      
      it "should print board" do 
         b = Board.new
         wymiary = [2,2]
         plansza = b.wypelnij_plansze(wymiary)
         expect{b.rysuj_plansza wymiary, plansza}.to output("----\n|  |\n|  |\n----\n").to_stdout
      end 
      
   end     
    
    describe "When calling wypelnij_plansze and given wysokosc, szerokosc" do 
      
      it "should fill board" do 
          b = Board.new
          wymiary = [2,3]
          plansza = b.wypelnij_plansze(wymiary)
          expect(b.wypelnij_plansze wymiary).to be_a Array
          expect(plansza.length).to eql 2
          expect(plansza[1].length).to eql 3
      end 
      
   end   
end
end