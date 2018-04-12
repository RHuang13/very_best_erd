class Dish < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
