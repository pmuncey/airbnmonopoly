class Pathway < ApplicationRecord
  # Direct associations

  has_many   :properties,
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
