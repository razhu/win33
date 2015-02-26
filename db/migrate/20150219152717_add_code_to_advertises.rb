class AddCodeToAdvertises < ActiveRecord::Migration
  def change
    add_column :advertises, :code, :string
  end
end
