class CreateItemsMigration < ActiveRecord::Migration
  def change
    create_table(:items) do |t|
      t.integer :item_id
      t.string :name
      t.datetime :added_on
    end
  end
end
