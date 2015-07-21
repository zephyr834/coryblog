require "test_helper"

describe Article do

  it "must be valid" do
    article = articles(:article_1)
    value(article).must_be :valid?
  end

  it "should not save without title" do
    article = Article.new
    article.body = "My body is so sexy"
    assert_not article.save, "Saved the article without a title"
  end

  it "should save with attributes saved" do
    article = Article.new
    article.title = "Really Cool Title"
    article.body = "My body is so sexy."
    assert article.save
  end

  

end
