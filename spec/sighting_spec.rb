require 'rails_helper'
describe Sighting do
  it{ should validate_presence_of :animal_id}
  it{ should validate_presence_of :region_id}

  it{ should belong_to :region}
  it{ should belong_to :animal}
end
