class AddIndexToTodayStatus < ActiveRecord::Migration[5.0]
  def change
    add_index :todays, :status
  end
end
