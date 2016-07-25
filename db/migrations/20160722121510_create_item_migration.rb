class CreateItemMigration < ActiveRecord::Migration
  def change
    create_table(:items) do |t|
      t.integer :list_id
      t.string :name
      t.datetime :added_on
    end
  end
end
