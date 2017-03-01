class CreateTodays < ActiveRecord::Migration[5.0]
  def change
    create_table :todays do |t|
      t.integer :time_container
      t.date :date
      t.string :status

      t.timestamps
    end
    add_index :todays, :status
    add_index :todays, :date
  end
end
