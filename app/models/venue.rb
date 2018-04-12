class Venue < ApplicationRecord
  # Direct associations

  belongs_to :dish

  has_many   :user_likes,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
