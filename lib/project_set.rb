require 'date'
require './lib/day'
require './lib/project'
require 'pry'
class ProjectSet
  attr_reader 
  def initialize(projects = [])
    @projects = projects
  end
end