class AddJointVentureRequestsReceivedCountToInvestors < ActiveRecord::Migration[5.0]
  def change
    add_column :investors, :joint_venture_requests_received_count, :integer
  end
end
