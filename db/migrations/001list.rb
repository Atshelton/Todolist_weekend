class CreatListsMigration < ActiveRecord::Migration
  def change
    create_table(:lists) do |t|
      t.string :name
      t.integer :list_id
      t.datetime :made_on
    end
  end
end
