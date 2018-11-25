class Distributeur < ApplicationRecord
  # acts_as_copy_target
  mount_uploader :photo, PhotoUploader
end
