class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :neighborhood
      t.string :latitude
      t.string :longitude

      t.timestamps

    end
  end
end
