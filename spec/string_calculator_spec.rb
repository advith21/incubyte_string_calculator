require_relative '../calculator/string_calculator.rb'

RSpec.describe StringCalculator do
    describe "add" do
        context "valid calculations" do
            it 'should return 0 for a empty string' do
                expect(described_class.add("")).to eq(0)
            end
        end
    end
end