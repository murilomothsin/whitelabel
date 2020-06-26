source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'
gem 'sqlite3'
gem 'puma', '~> 3.12'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'rack-cors'

gem 'bcrypt', '~> 3.1.7'
gem 'jwt'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
