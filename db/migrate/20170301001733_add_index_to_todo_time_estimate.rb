class AddIndexToTodoTimeEstimate < ActiveRecord::Migration[5.0]
  def change
    add_index :todos, :time_estimate
  end
end
