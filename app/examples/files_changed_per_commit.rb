require './app/loader'

DataMapper::Logger.new(STDOUT, :debug)
Loader.new.load_classes

p = Project.last

count_per_commit = p.commits.map {|c| c.modifications.size}

ocurrences_per_count = count_per_commit.group_by {|c| c}

count_per_commit = ocurrences_per_count.map {|count, ocurrences| {count => ocurrences.size}}

ordered = count_per_commit.sort_by {|hash| hash.keys[0]}

puts "{# of files changed => # of commits}"
puts ordered 


