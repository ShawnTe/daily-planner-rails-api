class User < ApplicationRecord
  has_secure_token
  has_secure_password

  has_many :todos, dependent: :destroy

  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
