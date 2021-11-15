class AddRushingStatsToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :team, :string
    add_column :players, :position, :string
    add_column :players, :rushing_attempts, :integer
    add_column :players, :rushing_attempts_per_game, :decimal
    add_column :players, :rushing_yards, :integer
    add_column :players, :rushing_avg, :decimal
    add_column :players, :rushing_yards_per_game, :decimal
    add_column :players, :rushing_touchdowns, :integer
    add_column :players, :rushing_long, :integer
    add_column :players, :rushing_long_touchdown_occured, :boolean
    add_column :players, :rushing_1st_downs, :integer
    add_column :players, :rushing_1st_down_percentage, :decimal
    add_column :players, :rushing_20_yards_plus_plays, :integer
    add_column :players, :rushing_40_yards_plus_plays, :integer
    add_column :players, :fumbles, :integer
  end
end
