class Vote < ActiveRecord::Base
  belongs_to :decisions
  attr_accessible :cdu_party, :spd_party
end
