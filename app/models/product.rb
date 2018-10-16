class Product < ApplicationRecord
  # acts_as_copy_target
  mount_uploader :photo, PhotoUploader
  monetize :price_cents, allow_nil: true
end
