class Order < ActiveRecord::Base
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name_kana, presence: true, length: { maximum: 50 }
  validates :first_name_kana, presence: true, length: { maximum: 50 }
end
