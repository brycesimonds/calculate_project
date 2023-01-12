class Project
  attr_reader :city_cost_type, :start_date, :end_date
  def initialize(city_cost_type, start_date, end_date)
    @city_cost_type = city_cost_type
    @start_date = start_date
    @end_date = end_date
  end
end