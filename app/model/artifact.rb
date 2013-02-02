class Artifact

  include DataMapper::Resource
  
  property :id, Serial 
  property :kind, String
  property :name, String

  #todo: map this
  #property :project_id, Serial

end
