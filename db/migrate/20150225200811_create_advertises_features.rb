class CreateAdvertisesFeatures < ActiveRecord::Migration
  def change
    create_table :advertises_features, id: false do |t|
      t.integer :advertise_id
      t.integer :feature_id

    end
  end
end
