class StringCalculator
  def self.add(string_number)
    return 0 if string_number.empty?

    return string_number.to_i if string_number.length == 1

    numbers_list = string_number.split(/,(?!\n)|\n/)
    sum = 0
    numbers_list.each do |number|
      sum += number.to_i
    end
    sum
  end
end