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
    it 'searches for a matching complete word' do
      expect(@wd.search('a')).to eq(true)
      expect(@wd.search('code')).to eq(true)
      expect(@wd.search('b')).to eq(false)
    end

    it 'can substitute a letter in a matching word for a period' do
      expect(@wd.search('c.dew.rs')).to eq(true)
    end

    # describe '#compare_with_periods' do
    #   it 'returns true with substituted letters' do
    #     expect(@wd.compare_with_periods('cod.', 'code')).to eq(true)
    #     expect(@wd.compare_with_periods('cod.r', 'code')).to eq(false)
    #   end
    # end
  end
end
