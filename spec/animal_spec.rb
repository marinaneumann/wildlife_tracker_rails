require 'rails_helper'

describe Animal do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name}

  it { should have_many :sightings}
  it { should have_many :regions}
end
