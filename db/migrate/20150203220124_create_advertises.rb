class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.string :title
      t.text :description
      t.string :direction
      t.decimal :price, precision: 9, scale: 2
      t.boolean :negotiable
      t.boolean :credit
      t.boolean :price_m2
      t.string :name_contact
      t.string :phone_contact
      t.string :time_to_contact
      t.integer :visits_number, default: 0
      t.date :publish_date
      t.date :validate_date

      t.timestamps
    end
  end
end
