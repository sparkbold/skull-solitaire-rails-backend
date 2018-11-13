class AddGameModeToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :game_mode, :string
  end
end
