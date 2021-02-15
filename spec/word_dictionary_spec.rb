# frozen_string_literal: true

require 'word_dictionary'

describe "word dictionary" do
  before(:each) do
    @wd = WordDictionary.new
  end

  it 'initializes with an empty dictionary' do
    expect(@wd.dictionary).to eq([])
  end

  describe '#add_word' do
    it 'adds a word to the dictionary' do
      @wd.add_word('cod')
      @wd.add_word('code')
      @wd.add_word('codewars')
      expect(@wd.dictionary).to include('cod', 'code', 'codewars')
    end
  end
end
