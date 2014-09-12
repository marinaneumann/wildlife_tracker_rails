class Sighting < ActiveRecord::Base
  validates :animal_id, :presence => true
  validates :region_id, :presence => true

  belongs_to :animal
  belongs_to :region

  def self.sort_by_region
    all.sort_by { |sighting| sighting.region.name }
  end
end
