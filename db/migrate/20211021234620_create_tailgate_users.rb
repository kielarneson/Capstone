class CreateTailgateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :tailgate_users do |t|
      t.integer :user_id
      t.integer :tailgate_id
      t.integer :game_id
      t.boolean :requested
      t.boolean :accepted
      t.text :review
      t.decimal :overall_rating, precision: 3, scale: 1
      t.integer :truthful_rating
      t.integer :location_rating
      t.integer :hospitality_rating
      t.integer :amenities_rating
      t.integer :parking_rating
      t.integer :food_rating
      t.integer :drink_rating

      t.timestamps
    end
  end
end
