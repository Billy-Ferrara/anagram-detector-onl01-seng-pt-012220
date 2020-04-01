class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(word_array)
    # .select returns everything itterated into its own array hence "word_array"
    # all of the words are itterating through |word| until a match is/isn't found
    # word.split breaks everything down between the quotation marks then compares it against the words in the @words array 
    word_array.select do |word|
      word.split("").sort == @word.split("").sort
    end
  end

end
