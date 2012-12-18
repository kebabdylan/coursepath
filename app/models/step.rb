class Step < ActiveRecord::Base
belongs_to :course
	validates :title, :presence => true
	validates :description, :presence => true
end
