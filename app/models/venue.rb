class Venue < ApplicationRecord
  # Direct associations

  has_many   :user_likes,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
