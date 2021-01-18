require 'filter_list'

describe 'filter_list' do

  it "returns a array of intergers when given an array of intergers" do
    expect(filter_list([1,2])).to eq [1,2]
  end

  it "does not return an array when it is anthing other than intergers" do
    expect(filter_list(["hello"])).to eq nil
  end

end