class AddFieldToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :advertise_id, :integer
  end
end
