class Spot < ApplicationRecord
  has_many :spot_images, dependent: :destroy
  accepts_nested_attributes_for :spot_images, allow_destroy: true
  # validates :spot_images, presence: true
end
