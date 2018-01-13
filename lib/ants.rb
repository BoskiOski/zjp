#!/usr/bin/env ruby
require_relative 'board'

#Class responsible for initializing ants, forcing them to move.
class Ants
 
    def initialize
        @board = Board.new   
	end	
    
  def dodaj_mrowki(wymiary, plansza, mrowki)
        for i in 1..mrowki
            while true do
                val1 = rand(0..wymiary[0] - 1)
                val2 = rand(0..wymiary[1] - 1)
                if(plansza[val1][val2] != "m") then
                    plansza[val1][val2] = "m"
                    break
                end 
            end
        end
        return plansza
end
  
      
      
      
     def rusz_mrowke(tab, plansza, wymiary)
         i = tab[0]
         j = tab[1]
        tabela_randomow = [rand(i-1..i+1), rand(j-1..j+1)]
      ii = tabela_randomow[0]
            if ii.between?(0, wymiary[0]-1) && tabela_randomow[1].between?(0, wymiary[1]-1) && plansza [ii][tabela_randomow[1]] != "m"
                 
                postaw_mrowke(tabela_randomow, plansza, tab)                           
            end
         
     end
      
      def postaw_mrowke(tabela_randomow, plansza,tab)
       
    plansza[tab[0]][tab[1]] = " "
    plansza[tabela_randomow[0]][tabela_randomow[1]] = "m"  
          
      end
    
    def czysc      
         sleep(2)
        system "clear"
        
    end
    
    def mrowki_sie_poruszaja(wymiary, plansza)
       czysc
        for i in 0..wymiary[0]-1
            for j in 0..wymiary[1]-1
                 tab=[i,j]
                if plansza[i][j] == "m" then                   
                    rusz_mrowke(tab, plansza, wymiary)                    
                else next
                    
                end               
            end
        end    
           
        return plansza
    end
                
    private :postaw_mrowke, :rusz_mrowke  
end