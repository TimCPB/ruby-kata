require 'word_dictionary'

describe "word dictionary" do

  before(:each) do
    @wd = WordDictionary.new
  end

  it "initializes with an empty dictionary" do
    expect(@wd.dictionary).to eq([])
  end

  # describe "#add_word" do
  #   it "adds a word to the dictionary"
  # end

end