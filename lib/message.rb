class Message
  attr_reader :text, :id, :time

  def initialize(text, id)
    @text = text
    @id = id
    @time = Time.now
  end
end 
