class Price < ActiveRecord::Base
  validates :size, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :purpose, presence: true
end
