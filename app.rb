require 'sinatra/base'

class Messenger < Sinatra::Base

  get '/' do
    erb(:index)
  end

end