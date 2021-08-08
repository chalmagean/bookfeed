require "spec_helper"
require "author"

RSpec.describe Author do
  describe ".new" do
    it "returns an Author instance" do
      expect(Author.new("Joe")).to be_an_instance_of(Author)
    end
  end

  describe "#name" do
    it "returns the name value" do
      expect(Author.new("Joe").name).to eq("Joe")
    end
  end
end

