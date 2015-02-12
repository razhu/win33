class Advertise < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_commontable
  belongs_to :property_type
  belongs_to :transaction_type
end

