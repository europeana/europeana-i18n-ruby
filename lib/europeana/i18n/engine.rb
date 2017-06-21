# frozen_string_literal: true

module Europeana
  module I18n
    class Engine < Rails::Engine
      engine_name 'europeana_i18n'

      # TODO: make it optional which locale sets are included
      paths['config/locales'] << 'config/locales/global'
      paths['config/locales'] << 'config/locales/portal'
    end
  end
end
