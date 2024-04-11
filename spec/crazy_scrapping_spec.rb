require_relative '../lib/crazy_scrapping.rb' 

describe "#perform not nil" do
    it "returns a non-nil value" do
      expect(perform).not_to be_nil
    end
  end

  describe "#perform crypto is in" do
  it "contains an element named 'BTC'" do
    expect(perform.any? { |element| element.is_a?(Hash) && element.key?("BTC") }).to be true
    expect(perform.any? { |element| element.is_a?(Hash) && element.key?("LTC") }).to be true
    expect(perform.any? { |element| element.is_a?(Hash) && element.key?("AVAX") }).to be true
    expect(perform.any? { |element| element.is_a?(Hash) && element.key?("TEST") }).to be false
  end
end

describe "#perform the tokens list is equal 20" do  
  it "There is 20 tokens in the list" do
    expect(perform.length).to eq(20)
  end
end


describe "class of trade" do
  it "Is trade is an array" do
    expect(perform().class).to eq(Array) 
  end
  
end