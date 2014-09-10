class Animal < ActiveRecord::Base
  validates :name, :presence => true
  validates_uniqueness_of :name

  has_many :sightings, :dependent => :destroy
  has_many :regions, through: :sightings
end
