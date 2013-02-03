class CCResult

  include DataMapper::Resource
  
  property :id, Serial
  property :avg_cc, Decimal 
  property :cc, Integer

  belongs_to :source_code, :child_key => [:sourceCode_id]

end
