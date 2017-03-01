class Region < ApplicationRecord
  # Direct associations

  has_many   :properties,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
