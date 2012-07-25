class Tag < ActiveRecord::Base
  belongs_to :motions
  attr_accessible :motion_id, :name
end
