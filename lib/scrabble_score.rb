class String
  define_method(:scrabble_score) do

    #initialize variables being used in this method
    word_score = 0
    word_letters = self.split("")
    one_pointers = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    two_pointers = ["d", "g"]
    three_pointers = ["b", "c", "m", "p"]
    four_pointers = ["f", "h", "v", "w", "y"]
    five_pointers = ["k"]
    eight_pointers = ["j", "x"]
    ten_pointers = ["q", "z"]
    letter_values = Hash.new()

    #adds letters and their appropriate values to letter_values hash
    one_pointers.each() do |letter|
      letter_values.store(letter, 1)
    end
    two_pointers.each() do |letter|
      letter_values.store(letter, 2)
    end
    three_pointers.each() do |letter|
      letter_values.store(letter, 3)
    end
    four_pointers.each() do |letter|
      letter_values.store(letter, 4)
    end
    five_pointers.each() do |letter|
      letter_values.store(letter, 5)
    end
    eight_pointers.each() do |letter|
      letter_values.store(letter, 8)
    end
    ten_pointers.each() do |letter|
      letter_values.store(letter, 10)
    end

    #fetches word's value from letter_values hash
    word_letters.each() do |letter|
      word_score += (letter_values.fetch(letter))
    end
    #return word's value
    word_score

  end
end

#puts("rocky".scrabble_score)
 class String
   define_method(:scrabble_cook) do
     raw_input = self.split('')
     upper_case = ('A'..'Z')
     lower_case = ('a'..'z')
     i = 0

     raw_input.each() do |letter|
       if (upper_case.include?(letter) || lower_case.include?(letter))
         puts(letter)
         i += 1
       else
         puts("unrecognized character spotted")
       end
      end

      if i == self.length()
        self.downcase().scrabble_score()
      else
        "You shall not pass!"
      end
   end
end
