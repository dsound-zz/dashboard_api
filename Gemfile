source "https://rubygems.org"

gem "jets"


# Include mysql2 gem if you are using ActiveRecord, remove next line
# and config/database.yml file if you are not
gem "mysql2"

gem "dynomite"

gem 'active_model_serializers'

gem 'validates_timeliness', '~> 5.0.0.alpha3'


gem 'jwt'

# development and test groups are not bundled as part of the deployment
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'shotgun'
  gem 'rack'
  gem 'puma'

  gem "factory_bot_rails"
  gem 'shoulda-matchers'
  gem 'faker'
end

group :test do
  gem 'rspec' # rspec test group only or we get the "irb: warn: can't alias context from irb_context warning" when starting jets console
  gem 'launchy'
  gem 'capybara'
end
