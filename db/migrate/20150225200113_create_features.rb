class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :feature_type
      t.string :description

      t.timestamps
    end
  end
end
