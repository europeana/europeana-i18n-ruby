# frozen_string_literal: true

module Europeana
  module I18n
    module JsTranslationsHelper
      def js_translation_files
        [
          asset_path("/javascripts/i18n/#{::I18n.locale}.js")
        ]
      end
    end
  end
end
