class PigLatinizer 

    attr_accessor :text 
    VOWLES = ['a', 'e', 'i', 'o', 'u']

    def initialize(text)
        @text = text.downcase
    end 

    def latinize 
        words = text.split(" ")
       latinized = words.map do |word|
            if VOWLES.include?(word[0])
                word + "way"
            else 
                new_word = word 
                first_letter = new_word.slice!(0)
                new_word + "#{first_letter}ay"
            end 
        end 
        latinized.join(" ").capitalize
    end 
end 