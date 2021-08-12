require_relative "AppleTree"

RSpec.describe AppleTree do
    before(:each) do
        @appleTree = AppleTree.new(50,6,0)
    end 
    

    it 'should have an age attribute with getter and setter methods' do
        expect(@appleTree.age).to eq(50)
    end
    it "raises error when user attempts to set height" do
        expect{@appleTree.height= 7}.to raise_error(NoMethodError)
    end

    it "raises error when user attempts to set apple count" do
        expect{@appleTree.count= 6}.to raise_error(NoMethodError)
    end

    context "apple tree years gone by"
        it 'adds one year to age' do 
            @appleTree.year_gone_by
            expect(@appleTree.age).to eq(51)
        end

        it 'increases heigth by 10 percent' do
            @appleTree.year_gone_by
            expect(@appleTree.height).to eq(6.6)
        end
        it 'grows apple if is older than 3 and less than 10 years' do
            @appleTree.age= 5
            @appleTree.year_gone_by
            expect(@appleTree.count).to eq(2)
        end 
        it 'does not grows apple if is older than 3 and less than 10 years' do
            @appleTree.age= 1
            @appleTree.year_gone_by
            expect(@appleTree.count).to eq(0)
        end 
    
end