class AddRateToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :rate, :integer
  end
end
