require('rspec')
require('number_counter')


describe('#number_counter') do
  it("returns 'one' for the number '1'") do
  counter = Counter.new("200")
  expect(counter.number_counter()).to(eq("onehundredeleven"))
  end
end
