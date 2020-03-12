class SpotCategory < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :spot, optional: true
end
