class EditOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :hotel_id, :integer
  end
end
