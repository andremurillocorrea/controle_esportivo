class User < ApplicationRecord
    mount_uploader :profilepic, ProfilePicUploader

    validates :name, :email, :document, :pwd, :age, :height, :weight, :category, :description, presence: true

    validates :email, uniqueness: true

    validates :pwd, length: {:within => 8..30}
end
