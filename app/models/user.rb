class User < ApplicationRecord
  has_secure_password
  has_many :questions
  has_many :answers  

  validates :password, presence: true
  validates :email, presence: true
end
