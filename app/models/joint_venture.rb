class JointVenture < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :investor

  # Indirect associations

  has_many   :properties,
             :through => :bookmarks,
             :source => :property

  # Validations

end
