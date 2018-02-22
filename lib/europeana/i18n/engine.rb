# frozen_string_literal: true

module Europeana
  module I18n
    class Engine < Rails::Engine
      engine_name 'europeana_i18n'

      # TODO: make it optional which locale sets are included
      %w(contribute global portal).each do |dir|
        paths['config/locales'] << "config/locales/#{dir}"
      end
    end
  end
end
