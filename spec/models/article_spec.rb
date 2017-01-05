require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:author) { User.create(username: "test", password: "test") }
  let(:article) { Article.new(title: "Test", body: "Test body.", author_id: author.id) }
  describe Article do
    it "has a title" do
      expect(article.title).not_to eq(nil)
      expect(article.title).to eq "Test"
    end
    it "has a body" do
      expect(article.body).not_to eq(nil)
      expect(article.body).to eq "Test body."
    end
    it "has an author" do
      expect(article.author).to eq author
      expect(article.author).to be_an_instance_of(User)
    end
  end
end