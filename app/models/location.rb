class Location < ActiveRecord::Base
  has_many :advertises
  has_ancestry

end
