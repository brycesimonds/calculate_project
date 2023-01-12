require 'date'
require 'pry'
class Day
  attr_reader :date, :month, :day, :year, :is_travel_day, :is_full_day, :city_cost_type
  def initialize(date, city_cost_type)
    @date = DateTime.parse(date) 
    @month = date.split("-")[1]
    @day = date.split("-")[2]
    @year = date.split("-")[0]
    @is_travel_day = nil
    @is_full_day = nil 
    @city_cost_type = city_cost_type
  end
end
