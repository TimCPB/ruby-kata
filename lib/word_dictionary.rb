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
    @dictionary.each { |entry| return true if compare_with_periods(word, entry) }
    false
  end

private

  def compare_with_periods(word1, word2)
    array1 = word1.split('')
    array2 = word2.split('')
    new_array1 = array1.map.with_index { |letter, i| return_subbed_letter(letter, array2, i) }
    new_array1 == array2
  end

  def return_subbed_letter(letter, array, n)
    if (letter == array[n])
      letter
    elsif (letter == '.')
      array[n]
    end
  end
end
