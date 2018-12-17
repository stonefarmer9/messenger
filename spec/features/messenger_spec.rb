feature "Page displays title" do
  scenario "Page welcomes user" do
    visit('/')
    expect(page).to have_content("Welcome to the Messenger App")
  end
end