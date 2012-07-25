class Decision < ActiveRecord::Base
  has_many :votes
  belongs_to :motions
  attr_accessible :commitee_date, :commitee_name, :id, :motion_id, :text, :vote_id
end
