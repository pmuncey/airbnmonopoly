class Investor < ApplicationRecord
  # Direct associations

  has_many   :joint_ventures,
             :dependent => :destroy

  has_many   :joint_venture_requests_received,
             :class_name => "JointVentureRequest",
             :foreign_key => "receiver_id",
             :dependent => :destroy

  has_many   :joint_venture_requests_sent,
             :class_name => "JointVentureRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :potential_investments,
             :through => :bookmarks,
             :source => :property

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
