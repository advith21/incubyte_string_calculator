class StringCalculator
  def self.add(string_number)
    return 0 if string_number.empty?

    return string_number.to_i if string_number.length == 1
  end
end