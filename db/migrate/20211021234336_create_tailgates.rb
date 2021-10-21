class CreateTailgates < ActiveRecord::Migration[6.1]
  def change
    create_table :tailgates do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :name
      t.text :description
      t.string :address
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :parking_available
      t.boolean :private_bathroom
      t.boolean :alcohol_allowed
      t.boolean :food_provided
      t.boolean :family_friendly
      t.boolean :tv_available

      t.timestamps
    end
  end
end
