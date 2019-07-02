class User < ApplicationRecord
  validates :username,
    presence: true,
    uniqueness: true,
    length: { minimum: 6 }
  validates :email, presence: true
  validates :password,
    presence: true,
    length: { minimum: 6 }
end
