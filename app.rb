require 'sinatra/base'
require './lib/message'
require 'rubygems'
require 'data_mapper'

DataMapper.setup(:default, 'postgres://georgeslevaillant@localhost/messages')
DataMapper.finalize
DataMapper.auto_upgrade!

class Messenger < Sinatra::Base

  enable :sessions


  get '/' do
    @messages = Message.all
    erb(:index)
  end

  post '/board' do
    @message = Message.create(
      :text => params[:message],
      :time => Time.now
    )
    redirect '/'
  end

  get '/messages/:id' do |id|
    @messages = Message.get!(id.to_i)
    
    erb :message
  end

end
