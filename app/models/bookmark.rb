class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :pathway

  belongs_to :property

  belongs_to :user,
             :class_name => "Investor",
             :foreign_key => "investor_id"

  # Indirect associations

  # Validations

end
