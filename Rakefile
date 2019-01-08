ENV['RACK_ENV'] ||= "development"

namespace :db do

  task :setup do
    require './lib/message'
    require 'data_mapper'

    DataMapper.setup(
      :default, "postgres://georgeslevaillant@localhost/message#{ENV['RACK_ENV']}"
    )
    DataMapper.finalize
  end

  task :auto_migrate => :setup do
      DataMapper.auto_migrate!
    puts 'Migration completed mathster!'
  end

  task :auto_upgrade => :setup do
    DataMapper.auto_upgrade!
    puts 'Upgrade successful your royal evilneth!'
  end
end
