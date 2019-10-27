class PigLatinizer
  attr_accessor :words
  def initialize
  end

  def piglatinize(word)
    #array = @words.split(" ")
    #array.each {|word|
    string = ""
    word.each {|letter|
      puts letter
      if !letter.match(/aeiouAEIOU/)
        string = string + letter
      end
    }
    if string.length = 0
      word.each {|letter|
        puts letter
        if letter.match(/aeiouAEIOU/)
          string = string + letter
        end
      }
    end

      first = string
      puts first
      following = word[first.length-1..-1]
      puts following
      #following.slice!(0, 1)
      if first.match(/[aeiouAEIOU]/)
        word = following + first + "way"
      else
        word = following + first + "ay"
      end
    #}
  end
end
