class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: { in: 6..16 }
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
