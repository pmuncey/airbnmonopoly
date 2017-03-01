class CreateJointVentures < ActiveRecord::Migration
  def change
    create_table :joint_ventures do |t|
      t.integer :investor_id

      t.timestamps

    end
  end
end
