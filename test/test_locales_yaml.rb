# frozen_string_literal: true

require 'test_helper'
require 'yaml'

class TestLocalesYAML < Minitest::Test
  %w(global portal).each do |set|
    FileList.new("config/locales/#{set}/??.yml").each do |file_path|
      locale = File.basename(file_path, '.yml')

      define_method :"test_#{set}_locale_#{locale}" do
        translations = YAML.load_file(file_path)
        assert_instance_of(Hash, translations)
      end
    end
  end
end
