class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon
      t.integer :user_id
      t.timestamps
    end
    add_index :groups, :user_id
  end
end
