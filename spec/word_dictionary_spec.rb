# frozen_string_literal: true

require 'word_dictionary'

describe WordDictionary do
  before(:each) do
    @wd = WordDictionary.new
    @wd.add_word('a')
    @wd.add_word('cod')
    @wd.add_word('code')
    @wd.add_word('codewars')
  end

  it 'initializes with an empty dictionary' do
    expect(subject.dictionary).to eq([])
  end

  describe '#add_word' do
    it 'adds a word to the dictionary' do
      @wd.add_word('hello')
      expect(@wd.dictionary).to include('hello')
    end
  end

  describe '#search' do
    it 'searches for a matching single letter' do
      expect(@wd.search('a')).to eq(true)
      expect(@wd.search('b')).to eq(false)
    end
  end
end
