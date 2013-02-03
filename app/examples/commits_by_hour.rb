require './app/loader'

DataMapper::Logger.new(STDOUT, :debug)
Loader.new.load_classes

def initilize_count_per_hour
  possible_hours = (1..24).to_set
  count_per_hour = possible_hours.inject({}) do |hash, hour|
    hash[hour] = 0
    hash
  end
 count_per_hour 
end

def count_per_hour(commits_hour) 
  initial_count = initilize_count_per_hour
  r = commits_hour.inject(initial_count) do |count_per_hour, hour|
    initial_count[hour] ||= 0
    initial_count[hour] += 1
    initial_count
  end
  r
end

p = Project.last

commits_hour = p.commits.map {|c| c.date.hour}

r = count_per_hour(commits_hour)

puts r
