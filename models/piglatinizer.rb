class PigLatinizer
  attr_accessor :words
  def initialize
  end

  def piglatinize(word)
    #array = @words.split(" ")
    #array.each {|word|
      first = word.chars.first
      word[0] = ''
      following = word
      if first == /[aeiou]/
        word = following + first + "way"
      else
        word = following + first + "ay"
      end
    #}
  end
end
