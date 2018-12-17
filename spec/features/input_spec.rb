feature 'User can type a message' do 
	scenario "User enters text" do
		visit ('/')
		fill_in 'message', with: "Tess tickle"
		click_button 'Submit'
		expect(page).to have_content "Tess tickle"
	end 
end 
