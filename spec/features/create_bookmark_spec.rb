feature "creating a new bookmark" do
  scenario "user adds a new book mark" do
    visit('/bookmarks')
    fill_in('url', with: 'http://bensworld.com')
    click_button('Add Bookmark')

    expect(page).to have_content 'http://bensworld.com'
  end
end