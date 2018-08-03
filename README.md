# europeana-i18n

[![Build Status](https://travis-ci.org/europeana/europeana-i18n-ruby.svg?branch=develop)](https://travis-ci.org/europeana/europeana-i18n-ruby) [![Security](https://hakiri.io/github/europeana/europeana-i18n-ruby/develop.svg)](https://hakiri.io/github/europeana/europeana-i18n-ruby/develop) [![Maintainability](https://api.codeclimate.com/v1/badges/595f677209e9fc811622/maintainability)](https://codeclimate.com/github/europeana/europeana-i18n-ruby/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/595f677209e9fc811622/test_coverage)](https://codeclimate.com/github/europeana/europeana-i18n-ruby/test_coverage)

I18n for Europeana Rails apps.

## Usage

Simply add "europeana-i18n" to your Rails app's Gemfile and `bundle`.

Translations from the YAML locales in this gem will then be available to your
app.

## JavaScript Translations

JavaScript translations are enabled through the [I18n-js](https://github.com/fnando/i18n-js) gem. 
You will need to add these js files to your app/assets/javascript/application.js

```javascript
//= require i18n_initializer
//= require i18n
//= require i18n_translations
```

Then ensure you load the translations specific to your current locale.
This gem automatically generates translation files per locale. (see config/i18n-js.yml)
In order to know which language file to use include the JsTranslationsHelper and call the js_translation_files method.
You can provide an array of language keys for the locales you require translations for.
If no parameter is given to js_translation_files it will default to the current I18n locale.

```ruby
class YourClass
  include Europeana::I18n::JsTranslationsHelper
end

YourClass.new.js_translation_files('en', 'nl') #=> ['/javascripts/i18n/en.js', '/javascripts/i18n/nl.js']
```

## License

Licensed under the EUPL V.1.1.

For full details, see [LICENSE.md](LICENSE.md).
