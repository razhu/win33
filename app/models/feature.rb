class Feature < ActiveRecord::Base
  has_and_belongs_to_many :advertises
  scope :ambientes, -> { where(feature_type: 'Ambientes') }
  scope :comodidades, -> { where(feature_type: 'Comodidades') }
end