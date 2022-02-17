require_relative '../lib/bookmark.rb'


describe Bookmark do

  describe '#list_all' do
    it 'returns the list of all saved bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      Bookmark.create('http://www.makersacademy.com/')
      Bookmark.create('http://www.destroyallsoftware.com')
      Bookmark.create('http://www.google.com/')

      bookmarks = Bookmark.list_all

      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.google.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end

  # Bookmark.create(url)
  describe '#create' do
    it "adds a bookmark to the database" do
      bookmark = Bookmark.create(url: "http://bensworld.com", title: 'Test Bookmark').first
      
      expect(bookmark['url']).to eq 'http://bensworld.com'
      expect(bookmark['title']).to eq 'Test Bookmark'
    end
  end

end

