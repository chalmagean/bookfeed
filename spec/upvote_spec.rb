require "spec_helper"
require "upvote"
require "user"
require "book"

RSpec.describe Upvote do
  describe ".new" do
    it "returns an Upvote instance" do
      user = instance_double(User)
      book = instance_double(Book)
      expect(Upvote.new(user, book)).to be_an_instance_of(Upvote)
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
      book = instance_double(Book)
      upvote = Upvote.new(user, book)
      expect(upvote.created_at).to eq(time)
    end
  end
end

