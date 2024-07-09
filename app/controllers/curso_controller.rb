class CursosController < ApplicationController
    def index
      resources :cursos, only: [:index]

      # Aqui você pode definir qualquer lógica que precisar para a página de índice de cursos
    end
  end
  