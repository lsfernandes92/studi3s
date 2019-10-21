class Event < ApplicationRecord
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'

  validates :name,
    presence: true,
    length: { maximum: 50 }
  validates :location,
    presence: true,
    length: { maximum: 150 }
  validates :date,
    presence: true
end
