class AddContainerIdToTodo < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :container_id, :integer
    
  end
end
