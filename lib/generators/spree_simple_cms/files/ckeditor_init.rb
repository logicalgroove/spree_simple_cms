require 'ckeditor-rails'
Ckeditor::Rails.configure do |config|
  # default is nil for all languages, or set as %w[en zh]
  config.assets_languages = %w(en)

  # default is nil for all plugins,
  # or set as white list: %w[image link liststyle table tabletools]
  # or set as black list: config.default_plugins - %w[about a11yhelp]
  config.assets_plugins = config.default_plugins - %w(flash forms smiley iframe save newpage preview print)

  # default is nil for all skins, or set as %w[moono]
  config.assets_skins = nil
end