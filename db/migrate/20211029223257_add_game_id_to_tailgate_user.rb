class AddGameIdToTailgateUser < ActiveRecord::Migration[6.1]
  def change
    add_column :tailgate_users, :game_id, :integer
  end
end
