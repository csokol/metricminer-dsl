class CommitDiff

  include DataMapper::Resource

  storage_names[:default] = 'Diff'
  
  property :id, Serial 
  property :diff, Text

end
