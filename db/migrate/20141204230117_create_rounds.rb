class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.decimal :fl_oz, precision: 8, scale: 2
      t.decimal :lbs, precision: 8, scale: 2
      t.decimal :hours, precision: 8, scale: 2

      t.timestamps
    end
  end
end
