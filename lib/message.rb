require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id,     Serial
  property :text,   Text
  property :created_at, Time

  def preview
    text[0...20]
  end
end
