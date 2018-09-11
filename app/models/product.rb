class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  monetize :price_cents, allow_nil: true
end
