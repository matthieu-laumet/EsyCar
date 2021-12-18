class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :brand, presence: true
  validates :model, presence: true
  validates :address, presence: true
  validates :price_per_day, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :search_by_adresse,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
