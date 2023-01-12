require 'date'
require './lib/day'
require 'pry'
class Project
  attr_reader :city_cost_type, :start_date, :end_date, :days
  def initialize(city_cost_type, start_date, end_date)
    @city_cost_type = city_cost_type
    @start_date = format_into_y_m_d(start_date)
    @end_date = format_into_y_m_d(end_date)
    @date_range = create_date_range(@start_date, @end_date)
    @days = @date_range.map {|date| Day.new(date, @city_cost_type)}
  end

  def format_into_y_m_d(date)
    m_d_y_array = date.split("/")
    month = m_d_y_array[0]
    day = m_d_y_array[1]
    year = "20" + m_d_y_array[2]
    year_month_day_string = year + "-" +  month + "-" + day
    date_object = Date.parse(year_month_day_string)
  end

  def create_date_range(start_date, end_date)
    date_range  = start_date..end_date
    (date_range).map(&:to_s)
  end
end