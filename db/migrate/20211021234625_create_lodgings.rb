class CreateLodgings < ActiveRecord::Migration[6.1]
  def change
    create_table :lodgings do |t|
      t.integer :tailgate_user_id
      t.string :lodging_type
      t.string :lodging_name
      t.string :address

      t.timestamps
    end
  end
end
