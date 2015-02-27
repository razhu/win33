class Feature < ActiveRecord::Base
  has_and_belongs_to_many :advertises

  scope :ambientes, -> { where(feature_type: 'ambientes') }
  scope :comodidades, -> { where(feature_type: 'comodidades') }
end
