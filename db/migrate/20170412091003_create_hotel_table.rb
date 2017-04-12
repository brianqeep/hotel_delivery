class CreateHotelTable < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.column :name, :string
      t.column :location, :string
      t.column :about, :text

      t.timestamps
    end
  end
end
