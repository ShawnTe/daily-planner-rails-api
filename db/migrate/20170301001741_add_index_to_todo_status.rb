class AddIndexToTodoStatus < ActiveRecord::Migration[5.0]
  def change
    add_index :todos, :status
  end
end
