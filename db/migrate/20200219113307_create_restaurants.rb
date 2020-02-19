class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :name
      t.integer :phone_number
      t.string :category

      t.timestamps
    end
  end
end
