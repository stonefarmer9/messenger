def add_message_and_submit
  visit '/'
  fill_in :message, with: 'Tess Tickle'
  click_button 'Submit'
end

def add_and_view_full_message
  visit '/'
  fill_in :message, with: 'Walk softly and carry a big gun'
  click_button 'Submit'
  click_link 'Walk softly and carr'
end

def add_multiple_messages
  visit('/')
  fill_in 'message', with: "1"
  click_button 'Submit'
  fill_in 'message', with: "2"
  click_button 'Submit'
  fill_in 'message', with: "3"
  click_button 'Submit'
end
