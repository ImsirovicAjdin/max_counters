def solution(number_of_counters, instructions)
  counters = Array.new number_of_counters, 0

  instructions.each do |instruction|
    counters[instruction - 1] += 1
  end
  counters
end
