require_relative '../calculator/string_calculator.rb'

RSpec.describe StringCalculator do
    describe "add" do
        context "valid calculations" do
            it 'Should return 0 for a empty string' do
                expect(described_class.add("")).to eq(0)
            end

            it "Should return the same number if string contains single number" do
                expect(described_class.add("1")).to eq(1)
            end

            it "Should add the numbers if string contains two numbers" do
                expect(described_class.add("3,6")).to eq(9)
            end
        end
    end
end