class PropertyType < ActiveRecord::Base
  has_many :advertises
  def self.all_types
    array=[]
    property=PropertyType.all
    property.each do |p|
      array << [p.property_type, p.id]
    end
    return array
  rescue
    return []
  end

end
