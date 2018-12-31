require_relative 'web_helper'

feature "Editing a message" do

  scenario 'Can go to an edit page' do
    add_and_view_full_message
    click_button 'Edit'
    expect(page).to have_content('Edit this message')
  end
  scenario "Can edit a message" do
    add_and_view_full_message
    click_button 'Edit'
    fill_in :update, with: "REDACTED ON ORDER OF ORDO MALLEUS"
    click_button 'Submit'

    expect(page).to have_content("REDACTED ON ORDER OF ORDO MALLEUS")
    expect(page).not_to have_content("Walk softly and carry a big gun")
  end
end
