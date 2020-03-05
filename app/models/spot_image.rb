class SpotImage < ApplicationRecord
  mount_uploader :src, ImagesUploader
  belongs_to :spot
end
