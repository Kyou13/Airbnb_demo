class Listing < ApplicationRecord
  belongs_to :user
  # 必須
  validates :home_type, presence: true
  validates :pet_tyep, presence: true
  validates :pet_size, presence: true
  validates :breeding_years, presence: true
end
