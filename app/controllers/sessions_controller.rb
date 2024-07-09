class Usuarios::SessionsController < Devise::SessionsController
  # Sobrescrever o método create para adicionar lógica adicional
  def create
    super do |resource|
      # Adicionar lógica personalizada após o login bem-sucedido
    end
  end

  # Adicionar uma nova ação para customizar o login
  def custom_login_action
    # Implementar lógica para uma nova ação de login
  end
end
