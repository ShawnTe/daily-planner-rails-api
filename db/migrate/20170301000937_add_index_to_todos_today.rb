class AddIndexToTodosToday < ActiveRecord::Migration[5.0]
  def change
    add_index :todos, :today_id
  end
end
