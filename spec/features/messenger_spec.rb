require_relative 'web_helper.rb'

feature "Page displays title" do
  scenario "Page welcomes user" do
    visit('/')
    
    expect(page).to have_content("Welcome to the best Messenger App of your life")
  end
end

feature "Page displays past messages" do
  scenario "Page stores past messages" do
    add_multiple_messages

    expect(page).to have_content("1")
    expect(page).to have_content("2")
    expect(page).to have_content("3")
  end


  scenario 'displaying only the first 20 characters of a message' do
    visit '/'
    fill_in :message, with: 'This Message Exceeds 20 Characters'
    click_button 'Submit'

    expect(page).to have_link 'This Message Exceeds'
    expect(page).not_to have_content ' 20 Characters'
  end
end
