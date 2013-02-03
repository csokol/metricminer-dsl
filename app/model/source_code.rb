class SourceCode

  include DataMapper::Resource
  
  property :id, Serial
  property :source, Text 
  property :source_size, Integer 

  belongs_to :modification, :child_key => [:modification_id]

end
