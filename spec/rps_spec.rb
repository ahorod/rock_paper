require('rspec')
require('rps')
describe('String#beats?') do
  it("returns true if r is the object and s is the argument") do
    expect("r".beats?("s")).to(eq('true'))
  end
  it("returns true if s is the object and p is the argument") do
    expect("s".beats?("p")).to(eq('true'))
  end
  it("returns true if p is the object and r is the argument") do
    expect("p".beats?("r")).to(eq('true'))
  end
  it("returns draw if r is the object and r is the argument") do
    expect("r".beats?("r")).to(eq('draw'))
  end
  it("returns true if s is the object and s is the argument") do
    expect("s".beats?("s")).to(eq('draw'))
  end
  it("returns true if p is the object and p is the argument") do
    expect("p".beats?("p")).to(eq('draw'))
  end
  it("returns true if p is the object and s is the argument") do
    expect("p".beats?("s")).to(eq('false'))
  end
  it("returns true if r is the object and p is the argument") do
    expect("r".beats?("p")).to(eq('false'))
  end
  it("returns true if s is the object and r is the argument") do
    expect("s".beats?("r")).to(eq('false'))
  end
end
