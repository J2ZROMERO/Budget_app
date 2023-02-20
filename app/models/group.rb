class Group < ApplicationRecord
    
belongs_to :user

has_many :budgets_groups
has_many :budgets, through: :budgets_groups



    
  
end
