# frozen_string_literal: true

module Europeana
  module I18n
    class Railtie < Rails::Railtie
      initializer 'europeana_i18n.insert_js_middleware' do |app|
        ::I18n::JS.config_file_path = File.expand_path('../../../config/i18n-js.yml', __dir__)
        app.config.middleware.use ::I18n::JS::Middleware
      end

      initializer 'europeana_i18n.setup_assets' do |app|
        Rake::Task['assets:precompile'].enhance(['i18n:js:export'])

        app.config.assets.precompile += %w(
          i18n/??.js
        )
      end
    end
  end
end
