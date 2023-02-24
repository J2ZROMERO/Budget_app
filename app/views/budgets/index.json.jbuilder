# frozen_string_literal: true

json.array! @budgets, partial: 'budgets/budget', as: :budget
