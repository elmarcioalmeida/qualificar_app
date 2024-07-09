# app/models/usuario.rb

class Usuario < ApplicationRecord
  # Outras configurações do Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Definição de enums
  enum status: { ativo: 0, inativo: 1 }

  # Validações e outras lógicas do modelo
  validates :nome, presence: true
  validates :email, presence: true, uniqueness: true
end
