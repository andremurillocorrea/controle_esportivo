class User < ApplicationRecord
    validates :name, :email, :document, :pwd, :age, :height, :weight, :category, :description, presence: true

    validates :email, uniqueness: true

    validates :pwd, length: {:within => 8..30}
	
	after_save :store_photo
	
	has_many :finances
	
	has_many :performances
	
	has_many :subscriptions
	
	def photo=(file_data)
		unless file_data.blank?
			@file_data = file_data
			self.extension = file_data.original_filename.split('.').last.downcase
		end
	end

	# Como ele utilizara arquivos estaticos, o diretorio
	# PHOTO_STORE sera criado na pasta "public".
	PHOTO_STORE = File.join Rails.root, 'public', 'photo_store'
	# retorna o path utilizado no HTML para a imagem
	def photo_path
		"/photo_store/#{id}.#{extension}"
	end
	# onde escrever o arquivo imagem
	def photo_filename
		File.join PHOTO_STORE, "#{id}.#{extension}"
	end
	# se o arquivo de foto existe, entao temos foto
	def has_photo?
		File.exists? photo_filename
	end
	
	private
		def store_photo
			if @file_data
				FileUtils.mkdir_p PHOTO_STORE
				File.open(photo_filename, "wb") do |f|
					f.write(@file_data.read)
				end
				@file_data = nil
			end
		end
		
end
