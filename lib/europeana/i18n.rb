# frozen_string_literal: true

require 'i18n-js'
require 'europeana/i18n/engine'
require 'europeana/i18n/railtie' if defined? Rails

module Europeana
  module I18n
    def self.root
      File.dirname __dir__
    end
  end
end
