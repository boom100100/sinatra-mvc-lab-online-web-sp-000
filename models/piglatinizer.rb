class PigLatinizer
  attr_accessor :words
  def initialize
  end

  def piglatinize(word)
    #array = @words.split(" ")
    #array.each {|word|
      first = word.chars.first
      following = word.chars[1..-1]
      if first == /[aeiou]/
        word = following + first + "way"
      else
        word = following + first + "ay"
      end
    #}
  end
end
