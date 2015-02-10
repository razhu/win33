class Advertise < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_commontable
end

