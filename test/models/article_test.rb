require "test_helper"

describe Article do

  it "must be valid" do
    article = articles(:article_one)
    value(article).must_be :valid?
  end

  it "should not save without title" do
    article = Article.new
    assert_not article.save
  end

end
