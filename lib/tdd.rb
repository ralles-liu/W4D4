class Array

    def my_uniq
        arr = []
        self.each do |ele|
            if !arr.include?(ele)
                arr.push(ele)
            end
        end
        return arr
    end
    

    def two_sum
        arr = []
        self.each_with_index do |ele, i|
            ((i + 1)...self.length).each do |j|
                if self[i] + self[j] == 0
                    arr << [i, j]
                end
            end
        end
        return arr    
    end
end

def my_transpose(arr)
    new_arr = Array.new(arr.length){Array.new(arr.length)}
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            new_arr[j][i] = arr[i][j]
        end
    end
    new_arr
end


def stock_picker(arr)
    min = arr[0]
    days = []
    max_profit = 0
    start_day = 0

    arr.each_with_index do |stock,day|
        profit = stock - min
        if profit > max_profit
            max_profit = profit
            days = [start_day,day]
        end
        if stock < min
            min = stock
            start_day = day
        end
    end
    days
end

class TowersOfHanoi
    attr_reader :pillar_1, :pillar_2, :pillar_3

    def initialize
        @pillar_1 = [4,3,2,1]
        @pillar_2 = []
        @pillar_3 = []
    end

    def get_pillar(num)
        if num == 0
            return @pillar_1
        elsif num == 1
            return @pillar_2
        elsif num == 2
            return @pillar_3
        else

            p "hi"
            raise StandardError
        end
    end


    def won?
        return @pillar_3 == [4,3,2,1]
    end

    def move
        while !self.won?
            p "#{@pillar_1} , #{@pillar_2} , #{@pillar_3}"
            
            start = nil
            destin = nil
            begin
                # will be to get the first input this is where to select our disc from
                print "Select a pillar where you want to take a disc: "
                start = gets.chomp.to_i
                if get_pillar(start) == []
                    raise ArgumentError
                end
            
            rescue ArgumentError
                puts "Sorry that pillar is empty"
                retry

            rescue StandardError
                puts "That was not a valid pillar, try again"
                retry                
            end


            begin
                print "Select a pillar to place disk on: "
                destin = gets.chomp.to_i
                if get_pillar(destin) != [] && get_pillar(destin)[-1] < get_pillar(start)[-1]
                    raise ArgumentError
                end

            rescue ArgumentError
                puts "Sorry that pillar is empty"
                retry

            rescue StandardError
                puts "That was not a valid pillar, try again"
                retry                
            end        

            get_pillar(destin) << get_pillar(start).pop
            
        end  
        puts "you won" 
    end
end