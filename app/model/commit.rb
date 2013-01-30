class Commit

  include DataMapper::Resource
  
  property :id, Serial
  property :commit_id, String
  property :date, DateTime
  property :prior_commit_id, String

  belongs_to :project, :child_key => [:project_id], :field => 'project_id'

  # todo: map these relationships
  #property :author_id, Integer
  #property :message_id, Integer
  #property :diff_id, Integer

end
