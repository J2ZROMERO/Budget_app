# frozen_string_literal: true

json.extract! budgets_group, :id, :group_id, :budget_id, :created_at, :updated_at
json.url budgets_group_url(budgets_group, format: :json)
