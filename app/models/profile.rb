class Profile < ApplicationRecord
	validates :name, :birth_date, :email, :phone, presence:true
	validates :name, :email, :phone, uniqueness: true
	validates :photo_url, allow_blank: true, format: {
		with: %r{\.(gif\jpg\png)\Z}i,
		message: 'must be an URL for GIF, JPG or PNG format.'
		}
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

