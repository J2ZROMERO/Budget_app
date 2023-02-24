class BudgetsGroup < ApplicationRecord
  belongs_to :group
  belongs_to :budget
end
