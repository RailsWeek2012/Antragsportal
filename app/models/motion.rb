class Motion < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_many :decisions
  has_many :tags
  attr_accessible :date, :latitude, :longitude, :register, :text, :title
end
