class AddIndexToTodo < ActiveRecord::Migration[5.0]
  def change
    add_index :todos, :completed
  end
end
