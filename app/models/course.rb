class Course < ActiveRecord::Base
	attr_accessible :title, :code, :number, :step_id
	has_many :steps
end
