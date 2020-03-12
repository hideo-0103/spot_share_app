class Category < ApplicationRecord
  has_many :spot_categories
  has_many :spot, through: :spot_categories
end
