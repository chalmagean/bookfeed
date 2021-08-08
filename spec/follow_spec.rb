require "spec_helper"
require "follow"
require "user"
require "author"

RSpec.describe Follow do
  describe ".new" do
    it "returns an Follow instance" do
      user = instance_double(User)
      author = instance_double(Author)
      expect(Follow.new(user, author)).to be_an_instance_of(Follow)
    end
  end

  describe "#author" do
    it "returns the associated author" do
      user = instance_double(User)
      author = instance_double(Author)
      follow = Follow.new(user, author)
      expect(follow.author).to eq(author)
    end
  end

  describe "#created_at" do
    let!(:time) { Time.local(2021) }

    before do
      Timecop.freeze(time)
    end

    after do
      Timecop.return
    end

    it "returns the created_at value" do
      user = instance_double(User)
      author = instance_double(Author)
      follow = Follow.new(user, author)
      expect(follow.created_at).to eq(time)
    end
  end
end

