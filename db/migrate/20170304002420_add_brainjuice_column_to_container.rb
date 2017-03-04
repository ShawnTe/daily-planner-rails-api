class AddBrainjuiceColumnToContainer < ActiveRecord::Migration[5.0]
  def change
    add_column :containers, :brainjuice_id, :integer
  end
end
