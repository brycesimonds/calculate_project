require './lib/project'
require 'rspec'

RSpec.describe Project do 
  it "exists" do 
    start_date = "9/1/15"
    end_date = "9/3/15"
    project = Project.new("Low Cost City", start_date, end_date )
    expect(project).to be_a(Project)
  end

  it "has attributes" do 
    start_date = "9/1/15"
    end_date = "9/3/15"
    project = Project.new("Low Cost City", start_date, end_date )
    expect(project.city_cost_type).to eq("Low Cost City")
    expect(project.start_date).to be_a Date
    expect(project.end_date).to be_a Date
  end

  it "can calculate its total cost" do 
    start_date = "9/1/15"
    end_date = "9/3/15"
    project = Project.new("Low Cost City", start_date, end_date )
    expect(project.calculate_cost).to eq(165)
  end
end