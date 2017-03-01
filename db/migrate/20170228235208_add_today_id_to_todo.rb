class AddTodayIdToTodo < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :today_id, :integer
  end
end
