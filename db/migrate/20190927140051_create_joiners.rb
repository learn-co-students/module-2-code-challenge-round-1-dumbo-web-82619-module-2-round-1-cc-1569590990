class CreateJoiners < ActiveRecord::Migration[5.1]
  def change
    create_table :joiners do |t|
      t.integer :episode_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
