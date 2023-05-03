def find_missing(sequence)
  # This function finds the missing number in a sequence.

  # 1. Create an array of consecutive pairs of numbers in the sequence.
  consecutive = sequence.each_cons(2)

  # 2. Create an array of the differences between the consecutive pairs of numbers.
  differences = consecutive.map { |a, b| b - a }

  # 3. Find the difference that occurs the most times in the array of differences.
  sequence = differences.max_by { |n| differences.count(n) }

  # 4. Find the pair of consecutive numbers in the sequence where the difference is not equal to the sequence.
  missing_between = consecutive.find { |a, b| (b - a) != sequence }

  # 5. Return the first number in the pair of consecutive numbers where the difference is not equal to the sequence.
  missing_between.first + sequence
end

# Example:
puts find_missing([2, 4, 8, 10])
