class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.decimal :fl_oz
      t.multiplier, :
      t.string :precision
      t.string :8,
      t.string :scale
      t.string :2
      t.decimal :lbs
      t.multiplier, :
      t.string :precision
      t.string :8,
      t.string :scale
      t.string :2
      t.decimal :hours
      t.multiplier, :
      t.string :precision
      t.string :8,
      t.string :scale
      t.string :2

      t.timestamps
    end
  end
end
