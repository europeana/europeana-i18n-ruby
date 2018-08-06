# frozen_string_literal: true

##
# Modifying the asset precompile task to ensure js translations are available before assets are precompiled.
::Rake::Task['assets:precompile'].enhance(['i18n:js:export'])

