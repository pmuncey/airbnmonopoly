class Property < ApplicationRecord
  # Direct associations

  belongs_to :region

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
