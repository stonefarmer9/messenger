feature "Page displays title" do
  scenario "Page welcomes user" do
    visit('/')
    expect(page).to have_content("Welcome to the Messenger App")
  end
end

feature "Page displays past messages" do
  scenario "Page stores past messages" do
    visit('/')
    expect(page).to have_content("Welcome to the Messenger App")
    fill_in 'message', with: "1"
    click_button 'Submit'
    fill_in 'message', with: "2"
    click_button 'Submit'
    fill_in 'message', with: "3"
    click_button 'Submit'
    expect(page).to have_content("1")
    expect(page).to have_content("2")
    expect(page).to have_content("3")
  end
end