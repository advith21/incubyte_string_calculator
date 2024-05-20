class StringCalculator
  def self.add(string_number)
    return 0 if string_number.empty?

    return string_number.to_i if string_number.length == 1

    if string_number.start_with?("//")
      new_delimiter = string_number.split(/\/\/|\n/)[1]
      delimiter = "\n|#{new_delimiter}"
      numbers_list = string_number.split(Regexp.new(delimiter))[2..-1]
    else 
      numbers_list = string_number.split(/,(?!\n)|\n/) 
    end
    sum = 0
    numbers_list.each do |number|
      sum += number.to_i
    end
    sum
  end
end