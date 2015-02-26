class AddFieldOnAdvertise < ActiveRecord::Migration
  def change
    add_column :advertises, :user_id, :integer
  end
end
