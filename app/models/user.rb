class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :user_type, :password_digest, presence: true
end