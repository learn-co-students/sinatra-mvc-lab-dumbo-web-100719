require 'pry'
class HogLatinizer
    attr_accessor :text

    def initialize(text)
        @text = text
    end

    # def hog_latinize
    #     # a = @text.split(" ")
    #     # a = string.split(" ")
    #     # b = a.map {|word| hog_latinize_word(word)}
    #     # b.join(" ")
    #     a = @text.split(" ")
    #     b = a.map {|word| hog_latinize_a_single_word(word)}        
    # end

    def hog_latinize_a_single_word
        # binding.pry
        new_letters = []
        letters = @text.chars.to_a
        letters.select do |letter|
            if letter == "a"
                letter = "oga"
            elsif letter == "e"
                letter = "oge"
            elsif letter == "i"
                letter = "ogi"
            elsif letter == "o"
                letter = "ogo"
            elsif letter == "u"
                letter = "ogu"
            end
            new_letters << letter
            
        end
        @hogged_word = new_letters.join
    end
    
    # binding.pry
end
