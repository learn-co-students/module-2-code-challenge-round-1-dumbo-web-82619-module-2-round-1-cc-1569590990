class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.belongs_to :guest_id, foreign_key: true
      t.belongs_to :episode_id, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
