require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module MvpQualificar
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Autoload lib/ diretório ignorando assets e tasks
    config.autoload_paths << Rails.root.join('lib')

    # Configuração para o pipeline de assets
    config.assets.enabled = true
    config.assets.compile = true

    # Defina os caminhos que devem ser precompilados
    config.assets.precompile += %w( welcome.scss )

    # Time zone padrão
    config.time_zone = 'Brasilia'
  end
end
