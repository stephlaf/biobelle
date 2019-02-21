class Product < ApplicationRecord
  # acts_as_copy_target
  mount_uploader :photo, PhotoUploader
  monetize :price_cents, allow_nil: true

  validates :name, presence: true
  validates :name, uniqueness: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  include PgSearch
  pg_search_scope :search_by_all_fields,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
