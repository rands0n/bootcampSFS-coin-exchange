source 'https://rubygems.org'

gem 'rails', '~> 5.0.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

# back end
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'
gem 'jbuilder', '~> 2.5'
gem 'rest-client'

# front end
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jquery-rails'
gem 'autoprefixer-rails', '~> 7.2', '>= 7.2.5'

# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
