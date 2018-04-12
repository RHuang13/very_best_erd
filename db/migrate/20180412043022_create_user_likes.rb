class CreateUserLikes < ActiveRecord::Migration
  def change
    create_table :user_likes do |t|
      t.integer :venue_id
      t.integer :dish_id

      t.timestamps

    end
  end
end
