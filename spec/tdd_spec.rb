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



describe "My Transpose" do
    subject(:arr) do
        [[0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
    end
    it "Should accept an array" do
        expect {my_transpose(arr)}.to_not raise_error
    end

    it  "Should convert between the row-oriented and column-oriented representations" do
        expect(my_transpose(arr)).to eq( [[0, 3, 6],
                                          [1, 4, 7],
                                          [2, 5, 8]])
    end
end


describe "Stock Picker" do
    subject(:arr) {[300, 200, 400, 500, 400, 800, 200]}

    it "Should accept an array" do
        expect {my_transpose(arr)}.to_not raise_error
    end

    it "Should return the most profitable pair of days on which to first buy the stock and then sell the stock" do
        expect(stock_picker(arr)).to eq([1,5])
    end
end

describe "Towers of Hanoi"


end




