class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
         has_many :budget, foreign_key: :author_id
         has_many :group, foreign_key: :author_id

         validates :name, length: { maximum: 100 }, presence: true
         validates :second_name, length: { maximum: 100 }, presence: true

end
