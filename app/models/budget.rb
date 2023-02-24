class Budget < ApplicationRecord

    belongs_to :user
   
    has_many :budgets_groups, dependent: :destroy
    has_many :groups, through: :budgets_groups
    validates :name, length: { maximum: 100 }, presence: { message: "The name field is mandatory" }
    validates :amount, length: { maximum: 100 }, presence: { message: "The name field is mandatory" }

end
