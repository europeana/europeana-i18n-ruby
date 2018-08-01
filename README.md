# europeana-i18n

[![Build Status](https://travis-ci.org/europeana/europeana-i18n-ruby.svg?branch=develop)](https://travis-ci.org/europeana/europeana-i18n-ruby) [![Code Climate](https://codeclimate.com/github/europeana/europeana-i18n-ruby/badges/gpa.svg)](https://codeclimate.com/github/europeana/europeana-i18n-ruby)

I18n for Europeana Rails apps.

## Usage

Simply add "europeana-i18n" to your Rails app's Gemfile and `bundle`.

Translations from the YAML locales in this gem will then be available to your
app.

## JavScript Translations

Javascript translations are enabled through the [I18n-js](https://github.com/fnando/i18n-js) gem. 
You will need to add these js files to your app/assets/javascript/application.js

```
//= require i18n_initializer
//= require i18n
//= require i18n_translations
```

Then ensure you load the translations specific to your current locale.
This gem automatically generates translation files per local. (see config/i18n-js.yml)
In order to know which language file to use include the JsTranslationsHelper and call the js_tranlation_files method.

```
class YourClass
  include Europeana::I18n::JsTranslationsHelper
  
  def self.required_js_files
    js_translation_files
  end
end

YourClass.required_js_files #=> ["/javascripts/i18n/en.js"]
```

## License
Licensed under the EUPL V.1.1.

For full details, see [LICENSE.md](LICENSE.md).
