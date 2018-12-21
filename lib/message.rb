require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id,     Serial
  property :text,   String
  property :time,   DateTime

  def preview
    text[0...20]
  end
end
