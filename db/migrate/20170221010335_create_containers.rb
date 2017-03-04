class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.integer :time_container
      t.date :date
      t.string :status
      t.references :brainjuice, foreign_key: true


      t.timestamps
    end
    add_index :containers, :status
    add_index :containers, :date
    add_index :containers, :time_container
  end
end
