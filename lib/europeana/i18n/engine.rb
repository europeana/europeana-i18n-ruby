# frozen_string_literal: true

module Europeana
  module I18n
    class Engine < Rails::Engine
      engine_name 'europeana_i18n'

      # TODO: make it optional which locale sets are included
      %w(contribute global portal).each do |dir|
        paths['config/locales'] << "config/locales/#{dir}"
      end

      initializer 'europeana_i18n.insert_js_middleware' do |app|
        ::I18n::JS.config_file_path = File.expand_path('../../../config/i18n-js.yml', __dir__)
        app.config.middleware.use ::I18n::JS::Middleware
      end

      rake_tasks do
        Dir[File.expand_path('../../tasks/*.rake', __dir__)].each { |f| load f }
      end

      initializer 'europeana_i18n.setup_assets' do |app|
        app.config.assets.precompile += %w(
          europeana/i18n.js
          i18n-js/??.js
        )
      end
    end
  end
end
