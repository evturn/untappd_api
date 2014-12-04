class RemoveLbsFromRounds < ActiveRecord::Migration
  def change
    remove_column :rounds, :lbs
  end
end
