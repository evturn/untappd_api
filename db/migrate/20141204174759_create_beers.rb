class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.string :style
      t.string :label
      t.string :brewery

      t.timestamps
    end
  end
end
