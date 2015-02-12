class ChangeOnLocation < ActiveRecord::Migration
  def change
    change_table :locations do |t|
      t.remove :area
      t.rename :region, :name
    end
  end
end
