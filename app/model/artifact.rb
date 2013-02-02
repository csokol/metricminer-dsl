class Artifact

  include DataMapper::Resource
  
  property :id, Serial 
  property :kind, String
  property :name, String

  belongs_to :project, :child_key => [:project_id]

end
