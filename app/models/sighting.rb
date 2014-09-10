class Sighting < ActiveRecord::Base
  validates :animal_id, :presence => true
  validates :region_id, :presence => true

end
