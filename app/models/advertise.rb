class Advertise < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_commontable

  belongs_to :user
  belongs_to :property_type
  belongs_to :transaction_type
  belongs_to :location

  has_many :photos
  accepts_nested_attributes_for :photos, :reject_if => :all_blank, :allow_destroy => true

  has_and_belongs_to_many :features

  validates :price, numericality: { greater_than: 0 }
  validates :title, :description, presence: true
end
