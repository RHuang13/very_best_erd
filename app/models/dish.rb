class Dish < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :dependent => :destroy

  # Indirect associations

  has_many   :user_likes,
             :through => :venues,
             :source => :user_likes

  # Validations

end
