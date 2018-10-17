class Finance < ApplicationRecord
    validates :debt, :value, :status, presence: true

    validates :value, numericality: {greater_than_or_equal_to: 0.00}
end
