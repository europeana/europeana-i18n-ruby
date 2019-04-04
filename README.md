# europeana-i18n

[![Build Status](https://travis-ci.org/europeana/europeana-i18n-ruby.svg?branch=develop)](https://travis-ci.org/europeana/europeana-i18n-ruby) [![Security](https://hakiri.io/github/europeana/europeana-i18n-ruby/develop.svg)](https://hakiri.io/github/europeana/europeana-i18n-ruby/develop) [![Maintainability](https://api.codeclimate.com/v1/badges/595f677209e9fc811622/maintainability)](https://codeclimate.com/github/europeana/europeana-i18n-ruby/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/595f677209e9fc811622/test_coverage)](https://codeclimate.com/github/europeana/europeana-i18n-ruby/test_coverage)

I18n for Europeana Rails apps.

## Usage

Simply add "europeana-i18n" to your Rails app's Gemfile and `bundle`.

Translations from the YAML locales in this gem will then be available to your
app.

## JavaScript Translations

JavaScript translations are enabled through the [I18n-js](https://github.com/fnando/i18n-js) gem. 
You will need to add europeana/i18n to your app/assets/javascript/application.js

```javascript
//= require europeana/i18n
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

YourClass.new.js_translation_files('en', 'nl') #=> ['/assets/i18n-js/en-FINGERPRINT.js', '/assets/i18n-js/nl-FINGERPRINT.js']
```

This gem modifies the asset pipeline to ensure the individual translations are present when running rake asset:precompile.
It's a good idea to ignore these files from version control in your project.

## License

Licensed under the EUPL v1.2.

For full details, see [LICENSE.md](LICENSE.md).
