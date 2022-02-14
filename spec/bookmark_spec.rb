require_relative '../lib/bookmark.rb'

describe Bookmark do
  describe '#list_all' do
    it 'returns the list of all saved bookmarks' do
      bookmarks = Bookmark.list_all

      expect(bookmarks).to include("bookmark_1")
      expect(bookmarks).to include("bookmark_2")
      expect(bookmarks).to include("bookmark_3")
    end
  end
end