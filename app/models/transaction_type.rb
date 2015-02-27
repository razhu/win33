class TransactionType < ActiveRecord::Base
  has_many :advertises
  def self.all_types
    array = []
    property = TransactionType.all
    property.each do |p|
      array << [p.transaction_type, p.id]
    end
    return array
  rescue
    return []
  end
end
