class CreateTodays < ActiveRecord::Migration[5.0]
  def change
    create_table :todays do |t|
      t.references :brainjuice, foreign_key: true
      t.integer :time_container
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
