
feature 'Linking to full message' do
  scenario 'clicking on truncated message takes you to full text' do
    visit '/'
    fill_in :message, with: 'This message exceeds 20 characters'
    click_button 'Submit'
    click_link 'This message exceeds'

    expect(page).to have_content 'This message exceeds 20 characters'
  end
end
