class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers
    numbers.split(",").map(&:to_i).sum
    numbers.gsub("\n", ",").split(",").map(&:to_i).sum
  end
end
