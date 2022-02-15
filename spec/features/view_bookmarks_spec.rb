feature 'bookmarks' do
  scenario 'viewing list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create('http://www.makersacademy.com/')
    Bookmark.create('http://www.destroyallsoftware.com')
    Bookmark.create('http://www.google.com/')
    
    visit('/bookmarks')

    expect(page).to have_content("http://www.makersacademy.com/")
  end
end