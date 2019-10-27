class PigLatinizer
  attr_accessor :words
  def initialize
  end

  def piglatinize(word)
    #array = @words.split(" ")
    #array.each {|word|
      first = word[0]
      puts first
      following = word[1..-1]
      puts following
      #following.slice!(0, 1)
      if first == /[aeiouAEIOU]/
        word = following + first + "way"
      else
        word = following + first + "ay"
      end
    #}
  end
end
