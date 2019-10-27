class PigLatinizer
  attr_accessor :words
  def initialize
  end

  def piglatinize(word) #words
    #array = words.split(' ')
    #array.each {|word|
    string = ""
    foundVowel = false
    word.chars.each {|letter|
      if !letter.match(/[aeiouAEIOU]/)
        string = string + letter
      else
        foundVowel = true
        break
      end
    }
    if foundVowel && string.length == 0
      word.chars.each {|letter|
        if letter.match(/[aeiouAEIOU]/)
          string = string + letter
        end
      }
    end

    first = word[0..string.length-1]
    following = word[string.length..-1]
    
    if first.match(/[aeiouAEIOU]/)
      word = first + following + "way"
    else
      word = following + first + "ay"
    end
    #}
    #array.join(" ")
  end
end
