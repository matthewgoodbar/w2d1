class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name, @breed, @age = name, breed, age
        @bark, @favorite_foods = bark, favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def favorite_foods
        @favorite_foods
    end

    def age=number
        @age = number
    end

    def bark
        return @age <= 3 ? @bark.downcase : @bark.upcase
    end

    def favorite_food?(str)
        down_foods = @favorite_foods.map(&:downcase)
        return down_foods.include?(str.downcase)
    end
end
