class Modification

  include DataMapper::Resource
  
  property :id, Serial 
  property :diff, Text
  property :kind, String

  belongs_to :commit, :child_key => [:commit_id]

  #todo: map these relationships
  #property :artifact_id, Integer

end
