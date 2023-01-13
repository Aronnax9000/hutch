class CreateGeometries < ActiveRecord::Migration[7.0]
  def change
    create_table :geometries do |t|
      t.string :name
      t.text :descripton
      t.integer :x
      t.integer :y
      t.integer :z
      t.integer :dx
      t.integer :dy
      t.integer :dz

      t.timestamps
    end
  end
end
