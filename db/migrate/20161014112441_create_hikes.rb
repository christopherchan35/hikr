class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
