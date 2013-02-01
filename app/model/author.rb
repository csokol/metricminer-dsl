class Author

  include DataMapper::Resource
  
  property :id, Serial 
  property :secret_email, String, :field => 'secret_email'
  property :secret_name, String, :field => 'secret_name'

end
