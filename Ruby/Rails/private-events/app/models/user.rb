class User < ApplicationRecord
  has_many :events

  validates :name,
    presence: true,
    length: { maximum: 10 }
end
