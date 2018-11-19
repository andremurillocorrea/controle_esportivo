class User < ApplicationRecord
    validates :name, :email, :document, :pwd, :age, :height, :weight, :category, :description, presence: true

    validates :email, uniqueness: true

    validates :pwd, length: {:within => 8..30}
	
	has_many :finances
	
	has_many :performances
	
	has_many :subscriptions
end
