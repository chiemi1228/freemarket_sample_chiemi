class Sell < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :sell
  belongs_to :user
  validates :name, :image, :price, presence: true
end

