require './app/loader'

DataMapper::Logger.new(STDOUT, :debug)
Loader.new.load_classes

p = Project.last

commits_hour = p.commits.map {|c| c.date.hour}

grouped = commits_hour.group_by {|hour| hour}

count_per_hour = grouped.map {|k, v| {k => v.size}}

ordered = count_per_hour = count_per_hour.sort_by {|hash| hash.keys[0]}

puts "{hour of day => # of commits}"
puts ordered 
