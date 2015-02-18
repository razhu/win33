class AddUbicationToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :ubication_id, :string
  end
end
