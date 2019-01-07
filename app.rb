ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'

require 'data_mapper'
require './lib/message'

require './config/data_mapper_config'

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
    @message = Message.get!(id.to_i)
    erb :message
  end

  get '/messages/:id/edit' do |id|
    @message = Message.get!(id.to_i)
    erb :edit
  end

  post '/messages/:id' do |id|
    @message = Message.get!(id.to_i)
    @message.update!(params[:message])
    redirect '/'
  end

  post '/delete/:id' do |id|
  @message = Message.get!(id.to_i)
  @message.destroy
  redirect '/'
end

end
