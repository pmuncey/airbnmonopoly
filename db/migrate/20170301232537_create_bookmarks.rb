class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :investor_id
      t.integer :property_id
      t.integer :pathway_id
      t.integer :joint_venture_id

      t.timestamps

    end
  end
end
