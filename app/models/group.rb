class Group < ApplicationRecord
    
belongs_to :user

has_many :budgets_groups , dependent: :destroy
has_many :budgets, through: :budgets_groups



    
  
end
