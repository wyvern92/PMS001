class Authentication < ApplicationRecord
  validates :user_id, presence: true, uniqueness: true
  has_secure_password
end
