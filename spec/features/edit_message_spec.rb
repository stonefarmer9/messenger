require_relative 'web_helper'

feature "Editing a message" do

  scenario 'Can go to an edit page' do
    add_and_view_full_message
    click_button 'Edit'

    expect(page).to have_content('Edit this message')
  end

  scenario 'Edit box loads with message' do
    add_and_view_full_message
    click_button 'Edit'

    expect(page).to have_content('Walk softly and carry a big gun')
  end

  scenario "Can edit a message" do
    add_and_view_full_message
    click_button 'Edit'
    fill_in :message[text], with: "REDACTED ON ORDER OF ORDO MALLEUS"
    click_button 'Update'

    expect(page).to have_content("REDACTED ON ORDER OF")
    expect(page).not_to have_content("Walk softly and carry a big gun")
  end
end
