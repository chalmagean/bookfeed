class Follow
  attr_reader :author, :created_at

  def initialize(user, author)
    @user = user
    @author = author
    @created_at = Time.now
  end
end
