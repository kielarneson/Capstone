class CreateParkings < ActiveRecord::Migration[6.1]
  def change
    create_table :parkings do |t|
      t.integer :tailgate_user_id
      t.string :parking_type
      t.string :address

      t.timestamps
    end
  end
end
