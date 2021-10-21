class CreateLodgings < ActiveRecord::Migration[6.1]
  def change
    create_table :lodgings do |t|
      t.integer :user_id
      t.integer :tailgate_id
      t.string :lodging_type
      t.string :lodging_name
      t.string :address

      t.timestamps
    end
  end
end
