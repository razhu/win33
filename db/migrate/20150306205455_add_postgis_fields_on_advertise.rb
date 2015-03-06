class AddPostgisFieldsOnAdvertise < ActiveRecord::Migration
  def change
    add_column :advertises, :address, :string
    add_column :advertises, :coordinates, :point, geographic:true
  end
end
