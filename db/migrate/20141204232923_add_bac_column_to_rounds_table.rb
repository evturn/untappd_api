class AddBacColumnToRoundsTable < ActiveRecord::Migration
  def change
    add_column :rounds, :bac, :decimal, precision: 8, scale: 2 
  end
end
