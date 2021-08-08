require "spec_helper"
require "feed"
require "user"

RSpec.describe Feed do
  describe "#retrieve" do
    it "forwards the call to the injected dependency" do
      user = instance_double(User, feed: "meh")

      feed = Feed.new(user)
      expect(feed.retrieve).to eq("meh")
    end
  end
end
