class Project
  include DataMapper::Resource

  #storage_names[:default] = 'Project'

  property :id, Serial
  property :name, String
  property :total_commits, String

end
