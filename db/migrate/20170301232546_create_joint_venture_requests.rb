class CreateJointVentureRequests < ActiveRecord::Migration
  def change
    create_table :joint_venture_requests do |t|
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps

    end
  end
end
