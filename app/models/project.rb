class Project < ActiveRecord::Base
  has_and_belongs_to_many :motions
  attr_accessible :name
end
