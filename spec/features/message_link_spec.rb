
require_relative 'web_helper'

feature 'Linking to full message' do
  scenario 'clicking on truncated message takes you to full text' do
    add_and_view_full_message

    expect(page).to have_content 'Walk softly and carry a big gun'
  end
end
