require "tdd_prac"

RSpec.describe Array do 
  
  describe "Array#my_uniq" do
    subject(:arr) {[1,2,3,3,2]}
    subject(:answer) { arr.my_uniq }

    it "returns an Array" do
      expect(answer).to be_a(Array)
    end

    it "has no duplicates" do
      expect(answer.count(3)).to eq(1)
    end

    it "should return a new array" do
      expect(answer.object_id).not_to eq(arr.object_id)
    end
  end

  describe "Array#two_sum" do 
    subject(:my_array){[-1,0,2,-2,1]}
    it "finds all pairs of positions where the elements sum to zero" do       
      expect(my_array.two_sum).to eq([[0,4], [2,3]])
    end

    it "returns an Array" do 
      expect(my_array).to be_a(Array)
    end
  end

  describe "Array#my_transpose" do
    subject(:my_arr) {[[0, 1, 2],[3, 4, 5],[6, 7, 8]]}

    it "should transpose the array" do
      expect(my_arr.my_transpose).to eq(my_arr.transpose)
    end

    it "it should return a new array" do 
      expect(my_arr.my_transpose.object_id).not_to eq(my_arr.object_id)
    end 
    
  end

  



end




