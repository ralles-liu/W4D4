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

