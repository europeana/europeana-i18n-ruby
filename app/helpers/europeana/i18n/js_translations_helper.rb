# frozen_string_literal: true

module Europeana
  module I18n
    module JsTranslationsHelper
      ##
      # @param locales [Array<String, Symbol>] Language codes for which translation js. Defaults to I18n.locale.
      # @return [Array<string>] The paths for the translation js files.
      def js_translation_files(*locales)
        locales = [::I18n.locale] if locales.empty?
        locales.map { |locale| asset_path("i18n-js/#{locale}.js") }
      end
    end
  end
end
