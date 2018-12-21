class Houseinfo < ApplicationRecord
  validates :house_description, presence: true
  validates :house_id, presence:true, uniqueness: true
  validates :house_price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :house_guest, presence: true
end
