class AddRatingToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :fieldname, :integer
  end
end
