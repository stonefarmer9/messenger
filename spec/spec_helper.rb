
ENV['RACK_ENV'] = 'test'
require_relative '../app.rb'
require 'capybara/rspec'
require 'rake'
require 'simplecov'
require 'simplecov-console'
require 'database_cleaner'



SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
   SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

Capybara.app = Messenger

RSpec.configure do |config|
  config.after(:suite) do
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

end
