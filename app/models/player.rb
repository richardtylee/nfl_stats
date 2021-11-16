class Player < ApplicationRecord
  def self.to_csv
    headers = %w{Player Team Pos Att Att/G Yds Avg Yds/G TD Lng 1st 1st 20+ 40+ FUM}
    attributes = %w{name team position rushing_attempts rushing_attempts_per_game rushing_yards rushing_avg rushing_yards_per_game rushing_touchdowns rushing_long rushing_1st_downs rushing_1st_down_percentage rushing_20_yards_plus_plays rushing_40_yards_plus_plays fumbles}
    CSV.generate(headers: true) do |csv|
      csv << headers
      all.each do |player|
        csv << attributes.map{ |attr| player.send(attr) }
      end
    end
  end
end
