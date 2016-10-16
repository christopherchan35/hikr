class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.string :distance
      t.string :location

      t.timestamps
    end
  end
end
