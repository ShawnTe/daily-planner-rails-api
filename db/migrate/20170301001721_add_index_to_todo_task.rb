class AddIndexToTodoTask < ActiveRecord::Migration[5.0]
  def change
    add_index :todos, :task
  end
end
