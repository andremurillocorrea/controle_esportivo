class Treino < ApplicationRecord

	has_many :presenca
	
	has_many :users , through: :presenca
	
end
