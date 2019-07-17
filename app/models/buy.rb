class Buy < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    belongs_to :sell
end
