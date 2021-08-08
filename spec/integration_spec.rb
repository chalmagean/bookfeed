require "spec_helper"
require "feed"
require "user"
require "author"
require "book"
require "upvote"

RSpec.describe Feed do
  describe "#retrieve" do
    it "returns the User's feed" do
      user = User.new("Joe")
      author = Author.new("Bil")
      book = Book.new("Deep Work", author)

      user.follow(author)
      user.upvote(book)

      feed = Feed.new(user)
      expect(feed.retrieve).to eq([book, author])
    end
  end
end
