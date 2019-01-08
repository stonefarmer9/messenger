ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'

require 'data_mapper'
require './lib/message'
require './lib/tag'
require './config/data_mapper_config'
require 'pry'

class Messenger < Sinatra::Base

  enable :sessions
  enable :method_override

  get '/' do
    @messages = Message.all
    erb :index
  end

  post '/board' do
    @message = Message.create(:text => params[:message])
    @tag = Tag.create(:tag => params[:tag], :message_id => @message.id)
    p @tag
    redirect '/'
  end

  get '/messages/:id' do |id|
    @message = Message.get!(id.to_i)
    @tag = @message.tag[0].tag
    p @tag
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
    @tag = @message.tag
    @tag.destroy!
    @message.destroy!
    redirect '/'
  end

end
