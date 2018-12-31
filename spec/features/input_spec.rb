require_relative 'web_helper'

feature 'User can type a message' do
		scenario "User enters text" do
				add_message_and_submit
				expect(page).to have_content "Tess Tickle"
	 end
end
