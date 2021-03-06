class Product < ApplicationRecord
    ##### CARRIERWAVE
    mount_uploader :photo, ImageUploader

    ##### VALIDATIONS
    validates :name, :price, :quantity, :description, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0.0 }
    validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end