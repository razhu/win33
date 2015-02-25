class ChangeFieldsNameOnPhotos < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.rename :ubication, :image
      t.rename :genre, :description
    end
  end
end
