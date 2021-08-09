require "spec_helper"
require "user"
require "book"
require "upvote"
require "author"

RSpec.describe User do
  let(:user) { User.new("Joe") }

  describe ".new" do
    it "returns an User instance" do
      expect(user).to be_an_instance_of(User)
    end
  end

  describe "#name" do
    it "returns the name value" do
      expect(user.name).to eq("Joe")
    end
  end

  describe "#feed" do
    it "returns a list of upvoted books and followed authors sorted by follow date" do
      a1 = instance_double(Author)
      user.follow(a1)
      b1 = instance_double(Book)
      user.upvote(b1)

      a2 = instance_double(Author)
      user.follow(a2)
      b2 = instance_double(Book)
      user.upvote(b2)
      expect(user.feed).to eq([b2, a2, b1, a1])
    end
  end
end
