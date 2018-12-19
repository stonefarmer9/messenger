require 'sinatra/base'
require './lib/message'

class Messenger < Sinatra::Base

  enable :sessions

  before do
    session[:id] ||= 1
    session[:history] ||= []
  end

  get '/' do
    @messages = session[:history]
    erb(:index)
  end

  post '/board' do
    id = session[:id]
    message = Message.new(params[:message], id)
    session[:history] << message
    id += 1
    session[:id] = id
    redirect '/'
  end

  get '/messages/:id' do
    @messages = session[:history]
    @id = params[:id].to_i
    erb :message
  end

end
