class User < ApplicationRecord
  enum role: { user: 'user', manager: 'manager', admin: 'admin' }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
end
