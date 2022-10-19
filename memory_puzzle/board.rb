require "./card.rb"
class Board
    attr_accessor :grid, :card1, :card2
    def initialize(n=4)
        @grid = Array.new(n){Array.new(n)}
        populate
        raise "pick a different number" if !(n*n).even? 
    end
    def [](pos)
        @grid[pos[0]][pos[1]]
    end
    def []=(pos,value)
        @grid[pos[0]][pos[1]] = value
    end
    def empty_spots?
        (0...@grid.length).each do |i|
            return true if @grid[i].any? {|ele| ele == nil}
        end
        false
    end    
    def populate
        #create two instances of card      
        # gets_position = (0..grid.length).all? do ||
        
        while self.empty_spots?
            arr =[]
            chars = []
            rc = ("a".."z").to_a.sample(1).join("")
            card1 = Card.new(rc)
            card2 = Card.new(card1.mark)
            random_index_1 = rand(0...@grid.length)
            random_index_2 = rand(0...@grid.length)
            random_index_3 = rand(0...@grid.length)
            random_index_4 = rand(0...@grid.length)


           if self[[random_index_1,random_index_2]] == nil && self[[random_index_3,random_index_4]] == nil && !arr.include?(card1.mark) && !arr.include?(card2.mark)
            self[[random_index_3,random_index_4]] = card2
            self[[random_index_1,random_index_2]] = card1
            arr << card1.mark
           end
        end
    end

    def render
        output= []
        (0...@grid.length).each do |i|
            subarr = []
            (0...@grid[i].length).each do |j|
                if @grid[i][j].face_up == true
                    subarr << grid[i].mark
                     subarr
                else
                    subarr <<  "_"
                end
               
            end
         p subarr.join(" ")
        end
    end
  
    def won?
       
    end

end