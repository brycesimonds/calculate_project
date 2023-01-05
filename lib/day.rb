class Day
  attr_reader :date, :month, :day, :year
  def initialize(date)
    @date = date 
    @month = date.split("/")[0]
    @day = date.split("/")[1]
    @year = date.split("/")[2]
  end
end
