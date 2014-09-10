class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :animal_id, :integer
      t.column :region_id, :integer
      t.column :longitude, :float
      t.column :latitude, :float
      t.column :date, :date

    end
  end
end
