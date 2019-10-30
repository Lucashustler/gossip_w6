class City < ApplicationRecord
  validates :name, presence: true
  validates :zip_code, presence: true
  # 1-N association with users table
  has_many :users
end
