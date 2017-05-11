class AddCompletedToTodo < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :completed, :datetime
  end
end
