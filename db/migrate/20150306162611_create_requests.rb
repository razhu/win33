class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.text :request_description
      t.decimal :price, precision: 9, scale: 2
      t.date :publish_date
      t.date :validate_date
      t.string :name
      t.string :phone
      t.string :cellphone
      t.string :skypeAcc
      t.string :email

      t.timestamps null: false
    end
  end
end
