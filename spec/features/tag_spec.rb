feature 'Adding a tag to a message' do

  scenario 'Can input a tag' do
    visit ('/')
    fill_in :message, with: 'Tags maybe'
    fill_in :tag, with: 'test'
    click_button 'Submit'

    expect(page).to have_content "text"
  end

end
