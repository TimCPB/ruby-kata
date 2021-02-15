# frozen_string_literal: true

class WordDictionary
  attr_reader :dictionary

  def initialize
    @dictionary = []
  end

  def add_word(word)
    @dictionary.push(word)
  end

  def search(word)
    @dictionary.include?(word)
  end

  def compare_with_periods(word1, word2)
    array1 = word1.split('')
    array2 = word2.split('')
    array1.map.with_index do |letter, i|
      if (letter == array2[i] || letter == '.')
        letter
      end
    end
    array1.length == array2.length
  end
end
