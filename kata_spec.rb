require_relative "counter.rb"

describe "solution" do
  it "should correctly handle 1 instruction" do
    expect(solution(3, [1])).to eq [1, 0, 0]
  end

  it "should increase the first number by 2" do
    expect(solution(3, [1, 1])).to eq [2, 0, 0]
  end

  it "should handle 2 counters increase" do
    expect(solution(3, [1, 3])).to eq [1, 0, 1]
  end
  
  it "should handle 3 counters increase" do
    expect(solution(3, [1, 2, 3])).to eq [1, 1, 1]
  end
end


