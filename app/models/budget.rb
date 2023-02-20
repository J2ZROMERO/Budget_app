class Budget < ApplicationRecord
    belongs_to :user, foreign_key: :author_id
    has_many :budget, foreign_key: :group_id

end
