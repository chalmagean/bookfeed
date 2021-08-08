require "spec_helper"
require "book"
require "author"

RSpec.describe Book do
  let(:author) { instance_double(Author) }

  describe ".new" do
    it "returns a Book instance" do
      expect(Book.new("Deep Work", author)).to be_an_instance_of(Book)
    end
  end

  describe "#title" do
    it "returns the title value" do
      book = Book.new("Deep Work", author)
      expect(book.title).to eq("Deep Work")
    end
  end

  describe "#author" do
    it "returns the author value" do
      book = Book.new("Deep Work", author)
      expect(book.author).to eq(author)
    end
  end
end
