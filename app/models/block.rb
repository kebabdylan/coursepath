class Block < ActiveRecord::Base
  belongs_to :step
  has_many :sources, :assignments, :quizes
end
