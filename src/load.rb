require 'rubygems'
require 'data_mapper' 
require 'active_support/all'


scripts = Dir.entries("model").select {|f| f.end_with? ".rb"} 
scripts = scripts.map {|s| "model/" + s}

load "config/initialize.rb"

DataMapper.setup(:default, 'mysql://root:@localhost/MetricMiner')
DataMapper.repository(:default).adapter.resource_naming_convention = ResourceNamingConvention
DataMapper.repository(:default).adapter.field_naming_convention = FieldNamingConvention

scripts.each do |s|
  load s
end

DataMapper.finalize

projects = Project.all
puts projects
puts projects[0].id 
puts projects[0].total_commits


