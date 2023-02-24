# frozen_string_literal: true

# Migration to create budgets groups join table

class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.decimal :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
