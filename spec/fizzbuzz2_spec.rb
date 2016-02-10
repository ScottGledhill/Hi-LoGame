require "fizzbuzz2"

describe "fizzbuzz" do
  it "checks if arg is a number" do
    expect(fizzbuzz("")).to eq "ERROR"
    expect(fizzbuzz([])).to eq "ERROR"
  end

  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it "checks if multiple of 5 and 3" do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
    expect(fizzbuzz(45)).to eq 'fizzbuzz'
end
    it "checks if multiple of 5" do
    expect(fizzbuzz(5)).to eq 'buzz'
    expect(fizzbuzz(55)).to eq 'buzz'
  end
end
