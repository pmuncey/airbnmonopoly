class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.float :airbnb_price
      t.float :listing_price
      t.string :sublease_price
      t.integer :region_id
      t.integer :pathway_id

      t.timestamps

    end
  end
end
