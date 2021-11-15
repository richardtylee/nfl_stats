# Seed NFL Rushing Data
file = File.read('db/rushing.json')

data_hash = JSON.parse(file)
data_hash.each do |row|
  lng = row["Lng"]
  rushing_long_touchdown_occurred = false;
  if(lng.is_a? Integer)
    rushing_long = lng;
  elsif(lng.is_a? String)
    if(row["Lng"].end_with?("T"))
      rushing_long_touchdown_occurred = true;
      rushing_long = row["Lng"].chomp('T').to_i;
    else
      rushing_long = row["Lng"].to_i;
    end
  else
    puts "Something went Wrong. Lng is not an Integer or String."
  end

  Player.create(
    name: row["Player"],
    team: row["Team"],
    position: row["Pos"],
    rushing_attempts: row["Att"],
    rushing_attempts_per_game: row["Att/G"],
    rushing_yards: row["Yds"],
    rushing_avg: row["Avg"],
    rushing_yards_per_game: row["Yds/G"],
    rushing_touchdowns: row["TD"],
    rushing_long: rushing_long,
    rushing_long_touchdown_occurred: rushing_long_touchdown_occurred,
    rushing_1st_downs: row["1st"],
    rushing_1st_down_percentage: row["1st%"],
    rushing_20_yards_plus_plays: row["20+"],
    rushing_40_yards_plus_plays: row["40+"],
    fumbles: row["FUM"],
  )
end


