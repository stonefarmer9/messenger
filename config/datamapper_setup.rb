require 'data_mapper'
require './lib/message'

DataMapper.setup(
  :default, "postgres://georgeslevaillant@localhost/message#{ENV['RACK_ENV']}"
)

DataMapper.finalize

if ENV['RACK_ENV'] == "test"
  DataMapper.auto_migrate!
elsif ENV['RACK_ENV'] == "development"
  DataMapper.auto_upgrade!
end 
