class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  # Associations
  has_many :shifts
  belongs_to :organization
end
