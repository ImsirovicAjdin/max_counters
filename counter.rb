def solution(number_of_counters, instructions)
  counters = Array.new number_of_counters, 0

  instructions.each do |instruction|
    if max_counters_instruction?(instruction, number_of_counters)
      counters.fill counters.max
    else
      counters[instruction - 1] += 1
    end
  end
  counters
end

def max_counters_instruction?(instruction, number_of_counters)
  instruction > number_of_counters
end
