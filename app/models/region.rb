class Region < ActiveRecord::Base
  validates :name, :presence => true
  validates_uniqueness_of :name

  has_many :sightings, :dependent => :destroy
  has_many :animals, through: :sightings
end
