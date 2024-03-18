class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.string :address_1
      t.string :address_2
      t.string :country

      t.timestamps
    end
  end
end
