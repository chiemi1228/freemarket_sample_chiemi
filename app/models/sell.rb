class Sell < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :buy, optional: true
  belongs_to :user
  validates :name, :price, :image, presence: true
end

