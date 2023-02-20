class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon
      t.date :createdAt
      t.integer :author_id
      t.integer :budget_id

      t.timestamps
    end
  end
end
