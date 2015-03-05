class Location < ActiveRecord::Base
  has_many :advertises
  has_ancestry

  def self.arrange_as_array(options = {}, hash = nil)
    hash ||= arrange(options)

    arr = []
    hash.each do |node, children|
      arr << node
      arr += arrange_as_array(options, children) unless children.nil?
    end
    arr
  end

  def name_for_selects
    "#{'-' * depth} #{name}"
  end

  def possible_parents
    parents = Location.arrange_as_array(:order => 'name')
    return new_record? ? parents : parents - subtree
  end

end
