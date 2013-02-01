class Commit

  include DataMapper::Resource
  
  property :id, Serial
  property :commit_id, String
  property :date, DateTime
  property :prior_commit_id, String

  belongs_to :project, :child_key => [:project_id]
  belongs_to :author, :child_key => [:author_id]
  belongs_to :commit_message, :child_key => [:message_id]

  # todo: map these relationships
  #property :diff_id, Integer

end
