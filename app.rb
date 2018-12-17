require 'sinatra/base'

class Messenger < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/board' do
    session[:message] = params[:message]
    @message = session[:message]
    erb :message_board
  end

end