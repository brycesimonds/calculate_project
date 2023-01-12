require './lib/project_set'
require './lib/project'
require './lib/day'
require 'rspec'

RSpec.describe ProjectSet do 
  it "exists" do 
    start_date = "9/1/15"
    end_date = "9/3/15"
    project = Project.new("Low Cost City", start_date, end_date )
    set = Set.new(project)
    expect(set).to be_a(Project)
  end
end