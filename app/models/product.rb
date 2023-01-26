class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :price, presence: true
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  
end
