# frozen_string_literal: true

# Change column type
class ChangeRestaurantColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phone_number, :string
  end
end
