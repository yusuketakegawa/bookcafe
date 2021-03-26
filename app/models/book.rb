class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user
  has_many :comments, dependent: :destroy

  with_options presence:true do
    validates :title
    validates :author
    validates :description
    validates :genre_id, numericality: { other_than: 1}
  end

  has_one_attached :image
end
