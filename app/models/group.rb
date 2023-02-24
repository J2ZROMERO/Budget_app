# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :user

  has_many :budgets_groups, dependent: :destroy
  has_many :budgets, through: :budgets_groups

  validates :name, length: { maximum: 100 }, presence: { message: 'The name field is mandatory' }
  validates :icon, presence: { message: 'The icon field is mandatory' }
end
