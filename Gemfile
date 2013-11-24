source 'https://rubygems.org'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'jquery-rails'
gem 'mini_magick'
gem 'carrierwave'
gem 'kaminari'
gem 'simple_form'
gem 'sorcery'
gem 'twitter'

group :development do
  gem 'thin'
  gem 'pry'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'better_errors' # エラー画面をわかりやすく整形してくれる
  gem 'binding_of_caller' # better_errorsの画面上にirb/pry(PERL)を表示する
  gem 'spring'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails'
  gem 'twitter-bootstrap-rails'
  gem 'bootstrap_helper'
  gem 'less-rails'
  gem 'flatstrap-rails'
  # See https://github.com/sstephenson/execjs #readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
end

group :production do
  gem 'passenger'
end
