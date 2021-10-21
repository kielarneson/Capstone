class CreateParkings < ActiveRecord::Migration[6.1]
  def change
    create_table :parkings do |t|
      t.integer :user_id
      t.integer :tailgate_id
      t.string :parking_type
      t.string :address

      t.timestamps
    end
  end
end
