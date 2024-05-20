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
      
      it "Should allow the calculator to handle new lines between numbers" do
        expect(described_class.add("2\n3")).to eq(5)
      end
                  
      it "Should allow the calculator to handle new lines and comma between numbers" do
        expect(described_class.add("2\n3,1")).to eq(6)
      end

      it "Should allow the calculator to allow different delimiters " do
        expect(described_class.add("//;\n6;2")).to eq(8)
      end
    end
  end
end