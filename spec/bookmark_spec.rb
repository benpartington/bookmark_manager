require_relative '../lib/bookmark.rb'

describe Bookmark do
  describe '#list_all' do
    it 'returns the list of all saved bookmarks' do
      bookmarks = Bookmark.list_all

      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.google.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end
end