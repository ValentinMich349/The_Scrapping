require_relative '../lib/mairie_christmas.rb' 

describe "#perform not nil" do
    it "returns a non-nil value" do
      expect(perform).not_to be_nil
    end
  end

  describe "#perform city hall is in" do
  it "contains an element named " do
    expect(perform.any? { |element| element.is_a?(Hash) && element.key?("Mairie Aragon") }).to be true
    expect(perform.any? { |element| element.is_a?(Hash) && element.value?("mairieairoux@wanadoo.fr") }).to be true
    
  end
end

describe "#perform the city halls list is equal 24" do  
  it "There is 24 citys hall in the list" do
    expect(perform.length).to eq(24)
  end
end


describe "class of perform" do
  it "Is perform is an array" do
    expect(perform().class).to eq(Array) 
  end
  
end