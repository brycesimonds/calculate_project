require './lib/project'
require 'rspec'

RSpec.describe Project do 
  it "exists" do 
    start_date = "9/1/15"
    end_date = "9/3/15"
    project = Project.new("Low Cost City", start_date, end_date )
    expect(project).to be_a(Project)
  end
end