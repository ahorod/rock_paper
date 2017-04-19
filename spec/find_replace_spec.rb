require('rspec')
require('find_replace')
describe('String#find_replace') do
  it("returns new sentence with old word replaced to new word") do
    expect("hello rose".find_replace("hello", "bonjour")).to(eq('bonjour rose'))
  end

end
