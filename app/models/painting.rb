class Painting < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_one_attached :photo
  # has_one :order, dependent: :destroy

  validates :title, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :price, presence: true

  pg_search_scope :global_search,
                  against: %i[title],
                  associated_against: {
                    user: %i[user_name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

end
