# frozen_string_literal: true

json.array! @budgets_groups, partial: 'budgets_groups/budgets_group', as: :budgets_group
