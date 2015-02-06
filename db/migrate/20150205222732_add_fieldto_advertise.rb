class AddFieldtoAdvertise < ActiveRecord::Migration
  def change
    add_column :advertises, :slug, :string
  end
end
