class PigLatinizer
  attr_accessor :words
  def initialize
  end

  def piglatinize(words)
    array = @words.split(' ')
    array.each {|word|
    string = ""
    foundVowel = false
    word.chars.each {|letter|
      if !letter.match(/[aeiouAEIOU]/)
        string = string + letter
      else
        foundVowel = true
        break
      end
      puts "No vowels: " + letter
    }
    puts "String: " + string
    if foundVowel && string.length == 0
      word.chars.each {|letter|
        puts "Vowels: " + letter
        if letter.match(/[aeiouAEIOU]/)
          string = string + letter
        end
      }
    end

    first = word[0..string.length-1]
    puts "First: " + first
    following = word[string.length..-1]
    puts following
      #following.slice!(0, 1)
    if first.match(/[aeiouAEIOU]/)
      word = first + following + "way"
    else
      word = following + first + "ay"
    end
    }
    array.join(" ")
  end
end
