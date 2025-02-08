class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers
    numbers.split(",").map(&:to_i).sum
    numbers.gsub("\n", ",").split(",").map(&:to_i).sum
    delimiter = ","
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    end
    numbers = numbers.gsub("\n", delimiter)
    num_array = numbers.split(delimiter).map(&:to_i)
    negatives = num_array.select { |num| num < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    num_array.sum
  end
end
