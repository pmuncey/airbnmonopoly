class JointVentureRequest < ApplicationRecord
  # Direct associations

  belongs_to :sender,
             :class_name => "Investor",
             :counter_cache => :joint_venture_requests_sent_count

  # Indirect associations

  # Validations

end
