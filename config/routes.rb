Rails.application.routes.draw do
  devise_for :usuarios, controllers: {
    sessions: 'usuarios/sessions'
  }

  resources :contact_us  # Rotas RESTful para o modelo ContactUs
  resources :especialidades  # Rotas RESTful para o modelo Especialidades

  # Rotas para páginas estáticas e controle de navegação
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact
  get 'cadastre-se' => 'pages#cadastre_se', as: :cadastre_se
  get 'area-restrita' => 'pages#area_restrita', as: :area_restrita
  get 'cursos' => 'pages#cursos', as: :cursos

  # Rota para a página inicial
  root 'welcome#index'
  
  # Health check route
  get 'up' => 'rails/health#show', as: :rails_health_check
end
