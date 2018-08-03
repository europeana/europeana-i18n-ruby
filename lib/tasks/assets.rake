# frozen_string_literal: true

##
# Modifying the asset precompile task
namespace :assets do
  ::Rake::Task[:precompile].enhance(['i18n:js:export'])
end
