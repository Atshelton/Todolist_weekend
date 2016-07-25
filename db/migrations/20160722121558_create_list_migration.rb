class CreateListMigration < ActiveRecord::Migration
  def change
    create_table(:lists) do |t|
      t.string :name
      t.datetime :made_on
    end
  end
end
