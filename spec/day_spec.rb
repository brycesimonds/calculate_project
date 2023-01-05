require './lib/day'
require 'rspec'

RSpec.describe Day do 
  it "exists" do 
    day = Day.new("9/1/15") 
    expect(day).to be_a(Day)
  end
end