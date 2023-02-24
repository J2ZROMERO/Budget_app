# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :budgets, foreign_key: :author_id
  has_many :groups, foreign_key: :author_id

  validates :name, length: { maximum: 100 }, presence: { message: 'El campo Nombre es obligatorio' }
  validates :second_name, length: { maximum: 100 },
                          presence: { message: 'El campo second nombre es obligatorio' }
end
