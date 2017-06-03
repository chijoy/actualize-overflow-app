class User < ApplicationRecord
  has_secure_password
  has_many :questions
  has_many :answers  

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
