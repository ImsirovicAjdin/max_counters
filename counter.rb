def solution(number_of_counters, instructions)
  counters = Array.new number_of_counters, 0
  @max_counter_value = 0

  instructions.each do |instruction|
    if max_counters_instruction?(instruction, number_of_counters)
      counters.fill @max_counter_value
    else
      new_counter_value = counters[instruction - 1] += 1
      update_max_counter new_counter_value
    end
  end
  counters
end

def max_counters_instruction?(instruction, number_of_counters)
  instruction > number_of_counters
end

def update_max_counter(new_counter_value)
  if @max_counter_value < new_counter_value
    @max_counter_value = new_counter_value
  end
end
