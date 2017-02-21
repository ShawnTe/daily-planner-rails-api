class CreateBrainjuices < ActiveRecord::Migration[5.0]
  def change
    create_table :brainjuices do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
