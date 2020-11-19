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
