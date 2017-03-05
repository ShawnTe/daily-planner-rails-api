class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.references :user, foreign_key: true
      t.string :task
      t.string :details
      t.integer :time_estimate
      t.string :status
      t.references :brainjuice, foreign_key: true

      t.timestamps
    end
    add_index :todos, :status
    add_index :todos, :time_estimate
  end
end
