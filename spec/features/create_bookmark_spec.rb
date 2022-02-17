feature "creating a new bookmark" do
  scenario "user adds a new book mark" do
    visit('/bookmarks')
    fill_in('url', with: 'http://bensworld.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Add Bookmark')

    expect(page).to have_link('Test Bookmark', href: 'http://bensworld.com')
  end
end