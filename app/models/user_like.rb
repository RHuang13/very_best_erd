class UserLike < ApplicationRecord
  # Direct associations

  belongs_to :venue

  # Indirect associations

  has_one    :dish,
             :through => :venue,
             :source => :dish

  # Validations

end
