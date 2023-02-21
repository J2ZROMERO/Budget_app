class Budget < ApplicationRecord

    belongs_to :user
   
    has_many :budgets_groups, dependent: :destroy
    has_many :groups, through: :budgets_groups

end
