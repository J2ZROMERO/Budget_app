class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.decimal :amount
      t.integer :author_id
      t.integer :group_id
      t.date :createdAt

      t.timestamps
    end
  end
end
