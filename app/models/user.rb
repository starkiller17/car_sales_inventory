class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :user_type, presence: true

  has_secure_password
end