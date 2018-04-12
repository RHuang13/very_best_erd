class Dish < ApplicationRecord
  # Direct associations

  has_many   :best_dishes,
             :class_name => "Bookmark",
             :dependent => :nullify

  belongs_to :menu_item,
             :required => false,
             :class_name => "Venue",
             :foreign_key => "venue_id"

  # Indirect associations

  # Validations

end
