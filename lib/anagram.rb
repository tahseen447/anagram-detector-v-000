# Your code goes here!
require "pry"
class Anagram

  attr_accessor :keyword

  def initialize(keyword)
    @keyword = keyword
  end

  def match(sentence)
    key_array = keyword.split("").sort
    #sentence.select {|word| word.split("").sort == @keyword.split("").sort}
    result = []
    sort_word_array = sentence.map { |word| word.split("").sort }
    sort_word_array.each_with_index {|word, index| if word == key_array then result << sentence[index] end}
    result
  end
end
