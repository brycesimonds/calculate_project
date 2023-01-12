require './lib/day'
require 'rspec'

RSpec.describe Day do 
  it "exists" do 
    day = Day.new("2015-09-01", "Low Cost City") 
    expect(day).to be_a(Day)
  end

  it "has attributes of month day and year" do 
    day = Day.new("2015-09-01", "Low Cost City") 
    expect(day.date).to be_a DateTime
    expect(day.month).to eq("09")
    expect(day.day).to eq("01")
    expect(day.year).to eq("2015")
    expect(day.is_travel_day).to eq(nil)
    expect(day.is_full_day).to eq(nil)
    expect(day.city_cost_type).to eq("Low Cost City")
  end
end