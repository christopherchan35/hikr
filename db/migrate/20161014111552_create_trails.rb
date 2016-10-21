class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      # t.string :name
      # t.string :distance
      # t.string :location

      t.string :name
      t.string :city
      t.string :description
      t.float :length
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
