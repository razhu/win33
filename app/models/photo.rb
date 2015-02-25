class Photo < ActiveRecord::Base
  attachment :image
  belongs_to :advertise
end
