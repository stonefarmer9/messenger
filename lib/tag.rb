require 'data_mapper'

class Tag

  include DataMapper::Resource

  property :id,  Serial
  property :tag, Text,  :lazy => false

  belongs_to :message


end
