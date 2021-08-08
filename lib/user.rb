require "follow"
require "upvote"

class User
  attr_reader :name

  def initialize(name)
    @name = name
    @upvotes = []
    @follows = []
  end

  def upvote(book)
    @upvotes << Upvote.new(self, book)
  end

  def follow(author)
    @follows << Follow.new(self, author)
  end

  def authors
    @follows.sort_by(&:created_at).reverse.map(&:author)
  end

  def upvotes
    @upvotes.sort_by(&:created_at).reverse.map(&:book)
  end

  def feed
    [@follows, @upvotes].flatten.sort_by(&:created_at).reverse.map(&extract_item)
  end

  private

    def extract_item
      -> (i) { i.respond_to?(:book) ? i.book : i.author }
    end
end
