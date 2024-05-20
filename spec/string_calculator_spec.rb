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

      it "Should allow the calculator to add unknown amount of numbers" do
        expect(described_class.add("1,4,6,8,10")).to eq(29)
      end
      
      it "Should allow new lines between numbers" do
        expect(described_class.add("2\n3")).to eq(5)
      end
                  
      it "Should allow new lines and comma between numbers" do
        expect(described_class.add("2\n3,1")).to eq(6)
      end

      it "Should allow different delimiters" do
        expect(described_class.add("//;\n6;2")).to eq(8)
      end

      it "Should ignore numbers larger than 1000" do
        expect(described_class.add("2,10000")).to eq(2)
      end

      it "Should return the result even if the delimiter is of any lenght" do
        expect(described_class.add("//[***]\n1***2***3")).to eq(6)
      end
    end

    context "Invalid calculatinos" do
      it "Should not allow negative numbers" do
        expect{described_class.add("3,-2")}.to raise_error(ArgumentError, "Negatives not allowed: -2")
      end

      it "Should not allow multiple negative numbers" do
        expect{described_class.add("-3,-2")}.to raise_error(ArgumentError, "Negatives not allowed: -3, -2")
      end
    end
  end
end