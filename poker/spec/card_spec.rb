require "card"

RSpec.describe Card do 
  
  describe "Card#initialize" do 

    it "should take in valid value and a suit as arguments" do
      expect{Card.new("uhh",:clubs)}.to raise_error
      expect{Card.new(:ace,:clubs)}.not_to raise_error
    end

    it ""
    end 

end