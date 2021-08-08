class Feed
  def initialize(user)
    @user = user
  end

  def retrieve
    @user.feed
  end
end
