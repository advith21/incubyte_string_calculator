class StringCalculator
  def self.add(string_number)
    return 0 if string_number.empty?

    numbers_list = extract_numbers(string_number)
    negative_numbers = []
    sum = 0

    numbers_list.each do |number|
      int_number = number.to_i
      next if int_number > 1000

      if int_number < 0
        negative_numbers << int_number
      else
        sum += int_number
      end
    end

    raise ArgumentError, "Negatives not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

    sum
  end

  private
    def self.extract_numbers(string_number)
      if string_number.start_with?("//")
        new_delimiter = string_number.split(/\/\/|\n/)[1]
        delimiter = "\n|#{new_delimiter}"
        string_number.split(Regexp.new(delimiter))[2..-1]
      else 
        string_number.split(/,(?!\n)|\n/) 
      end
    end
end