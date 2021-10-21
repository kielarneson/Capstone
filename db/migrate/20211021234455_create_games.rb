class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :api_id
      t.string :name
      t.string :away_team
      t.string :away_team_conference
      t.string :home_team
      t.string :home_team_conference
      t.string :stadium
      t.string :address
      t.datetime :start_time

      t.timestamps
    end
  end
end
