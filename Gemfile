source 'https://rubygems.org'

group :development do
  gem 'rake'
end

group :lint do
  # Lock nokogiri to 1.6.2. Version 1.6.3 breaks again with packaged libxml2 and libxslt libraries.
  gem 'nokogiri', '= 1.6.2'
  gem 'foodcritic', '~> 4.0'

  gem 'rubocop', '= 0.25.0', require: false
end
