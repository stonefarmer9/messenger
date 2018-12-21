ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'

require 'data_mapper'
require './lib/message'

require './config/datamapper_setup'

class Messenger < Sinatra::Base

  enable :sessions

  get '/' do
    @messages = Message.all
    erb(:index)
  end

  post '/board' do
    @message = Message.create(:text => params[:message])
    redirect '/'
  end

  get '/messages/:id' do |id|
    @messages = Message.get!(id.to_i)

    erb :message
  end

end
