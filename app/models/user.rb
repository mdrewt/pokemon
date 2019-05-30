class User < ApplicationRecord
  has_secure_password
  has_many: :pokemon, dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
