require 'date'
require './lib/day'
require './lib/project'
require 'pry'
class ProjectSet
  attr_reader 
  def initialize(projects = [])
    @projects = projects
  end

  def start
    #calculates the reimbursement and prints to screen
    cost_of_each_projects = @projects.map do |project| 
      cost  = project.calculate_cost
    end
    puts "There are #{@projects.count} projects in this set"
    cost_of_each_projects.each do |project_cost|
      puts "This project's cost is $#{project_cost}"
    end
    puts "Total cost for this set of projects is $#{cost_of_each_projects.sum}"
  end
end