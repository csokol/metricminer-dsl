

module ResourceNamingConvention
  def self.call(name)
    name.downcase.singularize.titleize
  end
end
 
module FieldNamingConvention
  def self.call(property)
    property.name.to_s.camelize :lower
  end
end
