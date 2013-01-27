class Commit 
  include DataMapper::Resource

  property :id, Serial
  property :commit_id, String
  property :prior_commit_id, String
  property :date, DateTime 

  belongs_to :project, :child_key => [:project_id], :field => 'project_id'

end
