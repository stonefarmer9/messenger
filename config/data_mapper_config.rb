
require 'data_mapper'

DataMapper.setup(
  :default, "postgres://georgeslevaillant@localhost/message#{ENV['RACK_ENV']}"
)

DataMapper.finalize
