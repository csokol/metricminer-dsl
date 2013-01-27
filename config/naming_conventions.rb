

module ResourceNamingConvention
  def self.call(name)
    name.downcase.singularize.titleize
  end
end
 
module FieldNamingConvention
  def self.call(property)
    if property.options[:index]
      property.name
    else
      property.name.to_s.camelize :lower
    end
  end
end
