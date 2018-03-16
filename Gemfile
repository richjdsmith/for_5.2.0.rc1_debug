source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0.rc1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'
# Use Sass C implementation of sass.
gem 'sassc-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Webpacker to handle javascript and crap
gem 'webpacker', '~> 3.2'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


# Styling - Bulma
gem "bulma-rails", "~> 0.6.2"

# Authentication - devise
gem 'devise', '~> 4.4', '>= 4.4.2'
# Role - Rolify Adds roles to users. - https://github.com/RolifyCommunity/rolify
gem 'rolify', '~> 5.2'
# Authorization - Pundit
gem 'pundit', '~> 1.1'

# Wizard Form Builder - lets me create steps for form. https://github.com/schneems/wicked
gem 'wicked'
# FriendlyID - Uses custom slug rails links https://github.com/norman/friendly_id
gem 'friendly_id', '~> 5.2', '>= 5.2.3'


# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

end

group :development do
  # This will give me a better error page in development. Second is to support the first.
  gem "better_errors"
  gem "binding_of_caller"
  # Lets me view arays as tables
  gem 'table_print'
  # This gem will open mail in the browser instead of at- tempting to send mail in the development environment.
  gem "letter_opener"
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
