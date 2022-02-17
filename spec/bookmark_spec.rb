require_relative '../lib/bookmark.rb'


describe Bookmark do

  describe '#list_all' do
    it 'returns the list of all saved bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: 'http://www.makersacademy.com/', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.create(url: 'http://www.google.com/', title: 'Google')

      bookmarks = Bookmark.list_all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com/'
    
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

