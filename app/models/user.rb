class User < ApplicationRecord
  # Direct associations

  has_many   :best_dishes,
             :class_name => "Bookmark",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
