def fizz_buzz(int)
  arr = []
  if (int.is_a? Integer) && (int > 0)
    int.times { |i| arr << (((i + 1) % 3).zero? ? "Fizz" : i + 1) }
    arr
  elsif int.is_a? Integer
    new_int = int * -1
    (new_int * 1).times { |i| arr << (((i + 1) % 3).zero? ? "Fizz" : (i + 1) * -1)}
    arr
  end
end

describe "fizz_buzz" do
  it "returns the integers from 1 to the inpt and replaces any multiple of 3 with 'Fizz'" do
    expect(fizz_buzz(10)).to eq([1, 2, "Fizz", 4, 5, "Fizz", 7, 8, "Fizz", 10])
  end

  it "works with negatives" do
    expect(fizz_buzz(-3)).to eq([-1, -2, "Fizz"])
  end

  it "returns nil if no integer" do
    expect(fizz_buzz("a")).to eq(nil)
  end
end
