class Finance < ApplicationRecord
	belongs_to :user
    validates :debt, :value, :status, presence: true

    validates :value, numericality: {greater_than_or_equal_to: 0.00}

	
	accepts_nested_attributes_for :user
	
    def total=(val)
        @total = val
    end


    def total
        @total
    end

end
