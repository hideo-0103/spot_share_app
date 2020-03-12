class Spot < ApplicationRecord
  geocoded_by :name
  after_validation :geocode
  has_many :spot_categories
  has_many :categories, through: :spot_categories
  has_many :spot_images, dependent: :destroy
  accepts_nested_attributes_for :spot_images, allow_destroy: true
  # validates :spot_images, presence: true
end
