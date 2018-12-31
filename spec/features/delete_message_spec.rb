require_relative 'web_helper'

feature 'deleting a message' do
  scenario 'deleting a message and returning home' do
  add_and_view_full_message
  click_button 'Delete'

  expect(page).not_to have_link 'walk softly and carr'
  end
end
