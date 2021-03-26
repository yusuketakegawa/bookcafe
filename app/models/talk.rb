class Talk < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :talking, presence: true
end
