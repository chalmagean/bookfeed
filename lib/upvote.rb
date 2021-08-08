class Upvote
  attr_reader :book, :created_at

  def initialize(user, book)
    @user = user
    @book = book
    @created_at = Time.now
  end
end
