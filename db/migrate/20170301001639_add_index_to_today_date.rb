class AddIndexToTodayDate < ActiveRecord::Migration[5.0]
  def change
    add_index :todays, :date
  end
end
