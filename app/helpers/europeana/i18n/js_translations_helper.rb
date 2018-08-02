# frozen_string_literal: true

module Europeana
  module I18n
    module JsTranslationsHelper
      ##
      # @param locales [Array<String, Symbol>] Language codes for which translation js. Defaults to I18n.locale.
      # @return [Array<string>] The paths for the translation js files.
      def js_translation_files(locales = [::I18n.locale])
        locales.map { |locale| asset_path("/javascripts/i18n/#{locale}.js") }
      end
    end
  end
end
