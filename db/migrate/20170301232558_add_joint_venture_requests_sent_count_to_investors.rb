class AddJointVentureRequestsSentCountToInvestors < ActiveRecord::Migration[5.0]
  def change
    add_column :investors, :joint_venture_requests_sent_count, :integer
  end
end
