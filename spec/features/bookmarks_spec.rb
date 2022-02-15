feature 'bookmarks' do
  scenario 'viewing list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com/")
  end
end