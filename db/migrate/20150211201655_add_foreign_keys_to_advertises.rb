class AddForeignKeysToAdvertises < ActiveRecord::Migration
  def change
    add_column :advertises, :property_type_id, :integer
    add_column :advertises, :transaction_type_id, :integer
  end
end
