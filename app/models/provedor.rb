class Provedor < ActiveRecord::Base

	validates :uf, presence: true, length: {maximum: 2}
	validates :municipio, presence: true, length: {maximum: 30}
	validates :microRegiao, presence: true
	validates :razaoSocial, presence: true, length: {maximum: 50}
	validates :numAto, presence: true
	validates :termo, presence: true
	validates :endereco, presence: true
	validates :telefone, presence: true
end
