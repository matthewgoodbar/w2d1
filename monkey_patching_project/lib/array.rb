# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.length == 0
        return self.max - self.min
    end

    def average
        arr_sum = self.sum
        arr_len = self.length
        return nil if arr_len == 0
        return arr_sum % arr_len == 0 ? arr_sum / arr_len : arr_sum / (arr_len * 1.0)
    end

    def median
        return nil if self.length == 0
        temp = self.sort
        midpoint = temp.length / 2
        return temp.length % 2 == 0 ? temp[midpoint - 1.. midpoint].average : temp[midpoint]
    end

    def counts
        count = Hash.new(0)
        self.each {|el| count[el] += 1}
        return count
    end

    def my_count(value)
        count = 0
        self.each {|el| count += 1 if el == value}
        return count
    end

    def my_index(value)
        self.each_with_index {|el, i| return i if el == value}
        return nil
    end

    def my_uniq
        res = []
        self.each {|el| res << el unless res.include?(el)}
        return res
    end

    def my_transpose
        dim = self.length
        res = Array.new(dim) {Array.new}
        (0...dim).each do |i|
            (0...dim).each do |j|
                res[j] << self[i][j]
            end
        end
        return res
    end
end
