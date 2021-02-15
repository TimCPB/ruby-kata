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
end
