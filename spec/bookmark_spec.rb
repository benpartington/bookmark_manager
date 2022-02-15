require_relative '../lib/bookmark.rb'


describe Bookmark do

  describe '#list_all' do
    it 'returns the list of all saved bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      described_class.create('http://www.makersacademy.com/')
      described_class.create('http://www.destroyallsoftware.com')
      described_class.create('http://www.google.com/')


      bookmarks = described_class.list_all

      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.google.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end

  # Bookmark.create(url)
  describe '#create' do
    it "adds a bookmark to the database" do
      described_class.create("www.bensworld.com")
      expect(described_class.list_all).to include 'www.bensworld.com'
    end
  end

end

