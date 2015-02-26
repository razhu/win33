class OtherChangeFieldsNameOnPhotos < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.rename :image, :image_id
    end
  end
end
