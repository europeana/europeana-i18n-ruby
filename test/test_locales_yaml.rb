# frozen_string_literal: true

require 'test_helper'
require 'yaml'

class TestLocalesYAML < Minitest::Test
  %w(contribute global portal).each do |set|
    FileList.new("config/locales/#{set}/??.yml").each do |file_path|
      locale = File.basename(file_path, '.yml')

      define_method :"test_#{set}_locale_#{locale}_yaml_parses" do
        assert_instance_of(Hash, load_translations(file_path))
      end

      define_method :"test_#{set}_locale_#{locale}_key" do
        translations = load_translations(file_path)
        assert_equal(1, translations.keys.size)
        assert_equal(locale, translations.keys.first)
      end
    end
  end

  private

  def load_translations(file_path)
    YAML.load_file(file_path)
  end
end
