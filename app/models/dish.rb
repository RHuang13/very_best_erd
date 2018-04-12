class Dish < ApplicationRecord
  # Direct associations

  has_one    :user_like,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
