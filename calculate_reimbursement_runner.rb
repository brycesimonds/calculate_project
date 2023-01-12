require './lib/project'
require './lib/day'
require './lib/project_set'

project_11 = Project.new("Low Cost City", "9/1/15", "9/3/15")
find_reimbursement_11 = ProjectSet.new(project_01)
find_reimbursement11.start

project_21 = Project.new("Low Cost City", "9/1/15", "9/1/15")
project_22 = Project.new("High Cost City", "9/2/15", "9/6/15")
project_23 = Project.new("Low Cost City", "9/6/15", "9/8/15")
find_reimbursement_21 = ProjectSet.new([project_21, project_22, project_23])
find_reimbursement21.start

project_31 = Project.new("Low Cost City", "9/1/15", "9/3/15")
project_32 = Project.new("High Cost City", "9/5/15", "9/7/15")
project_33 = Project.new("High Cost City", "9/8/15", "9/8/15")
find_reimbursement_31 = ProjectSet.new([project_31, project_32, project_33])
find_reimbursement31.start

project_41 = Project.new("Low Cost City", "9/1/15", "9/1/15")
project_42 = Project.new("Low Cost City", "9/1/15", "9/1/15")
project_43 = Project.new("High Cost City", "9/2/15", "9/2/15")
project_44 = Project.new("High Cost City", "9/2/15", "9/3/15")
find_reimbursement_41 = ProjectSet.new([project_41, project_42, project_43, project_44])
find_reimbursement.start