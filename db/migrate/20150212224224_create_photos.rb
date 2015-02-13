class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :ubication
      t.string :genre

      t.timestamps
    end
  end
end
