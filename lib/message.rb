require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id,     Serial
  property :text,   Text
  property :created_at, Time


  has n, :tag

  def preview
    text[0...20]
  end

end

class Tag

  include DataMapper::Resource

  property :id,  Serial
  property :tag, Text,  :lazy => false

  belongs_to :message


end
