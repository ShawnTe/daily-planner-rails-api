class AddIndexToBrainjuiceName < ActiveRecord::Migration[5.0]
  def change
    add_index :brainjuices, :name
  end
end
