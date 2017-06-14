class User < ApplicationRecord
  has_secure_password
  has_many :questions
  has_many :answers  

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  # validates :password, length: {6..20}
end
