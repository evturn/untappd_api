class CreateDrinkers < ActiveRecord::Migration
  def change
    create_table :drinkers do |t|
      t.string :sex
      t.decimal :lbs, precision: 8, scale: 2

      t.timestamps
    end
  end
end
