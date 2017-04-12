class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.column :name, :string
      t.column :number, :integer
      t.column :order, :text
      t.column :location, :string

      t.timestamps
    end
  end
end
