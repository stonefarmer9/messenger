def add_message_and_submit
  visit '/'
  fill_in :message, with: 'Tess Tickle'
  fill_in :tag, with: "testytickle"
  click_button 'Submit'
end

def add_and_view_full_message
  visit '/'
  fill_in :message, with: 'Walk softly and carry a big gun'
  fill_in :tag, with: "astartes"
  click_button 'Submit'
  click_link 'Walk softly and carr'
end

def add_multiple_messages
  visit('/')
  fill_in 'message', with: "1"
  fill_in :tag, with: 'test'
  click_button 'Submit'
  fill_in 'message', with: "2"
  fill_in :tag, with: 'test'
  click_button 'Submit'
  fill_in 'message', with: "3"
  fill_in :tag, with: 'test'
  click_button 'Submit'
end
