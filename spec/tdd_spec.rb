require "tdd"

describe "Remove dups" do 
    subject(:arr) {[1,2,1,3,3]}
    it "should accept and take in an array" do
        expect { [1,2].my_uniq }.to_not raise_error
    end

    context "when there are duplicate" do
        it "should return an array without them" do
            expect(arr.my_uniq).to eq([1,2,3])
        end
    end            
end

describe "Two sum" do 
    subject(:arr) {[-1, 0, 2, -2, 1]}
    it "should accept and take in an array" do
        expect { [1,2].two_sum }.to_not raise_error
    end
    
    it "should return an array of pairs where the elements at those positions sum to zero" do
        expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end

    # it "should be sorted so that the smaller index is before the larger index" do
    #     expect([])    
    # end
end










