class Property < ApplicationRecord
  # Direct associations

  belongs_to :pathway

  belongs_to :region

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

end
