require './app/loader'

DataMapper::Logger.new(STDOUT, :debug)
Loader.new.load_classes

class Array
  def count_by_element
    grouped = group_by {|e| e}
    grouped.map{|h, v| {h => v.size}}
  end
end

p = Project.last

modifications = p.commits.flat_map{|c| c.modifications}
names = modifications.map{|m| m.artifact.name}

puts "{file name => # of modifications}"
puts names.count_by_element.sort_by {|h| h[h.keys[0]]}

