class Modification

  include DataMapper::Resource
  
  property :id, Serial 
  property :diff, Text
  property :kind, String

  belongs_to :commit, :child_key => [:commit_id]
  belongs_to :artifact, :child_key => [:artifact_id]

end
