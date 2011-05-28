###RSpec.configure do |config|
###  config.use_transactional_fixtures = false
  
###  config.before(:suite) do
    #if Capybara.current_driver == :rack_test
    #  DatabaseCleaner.strategy = :transaction
    #  DatabaseCleaner.clean_with(:truncation)
    #  DatabaseCleaner.strategy = :transaction
    #else
    #  DatabaseCleaner.strategy = :truncation
    #end
###    DatabaseCleaner.strategy = :transaction
###    DatabaseCleaner.clean_with(:truncation)
###  end

###  config.before(:each) do
    #if Capybara.current_driver == :rack_test
    #  DatabaseCleaner.strategy = :transaction
    #else
    #  DatabaseCleaner.strategy = :truncation
    #end
###    DatabaseCleaner.start
###  end

###  config.after(:each) do
###    DatabaseCleaner.clean
###  end
###end

DatabaseCleaner.strategy = :transaction

RSpec.configure do |config|
  config.before :suite do
    DatabaseCleaner.clean_with :truncation
  end
  config.before :each do
    DatabaseCleaner.start
  end
  config.after :each do
    DatabaseCleaner.clean
  end
end
