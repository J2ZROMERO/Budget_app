# frozen_string_literal: true

# Migration to create budgetsgrups groups join table

class CreateBudgetsGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets_groups do |t|
      t.belongs_to :group, null: false, foreign_key: true
      t.belongs_to :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
