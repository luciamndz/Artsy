class Painting < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  # has_one :order, dependent: :destroy

  validates :title, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :price, presence: true

end
