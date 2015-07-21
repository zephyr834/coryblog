require "test_helper"

describe ArticlesController do

  it "should get index" do
    get :index
    assert_response :success
    assert_template :index
    assert_not_nil assigns(:articles)
  end
  
  it "should create article" do
    assert_difference('Article.count') do
     post :create, article: {title: 'Some title', body: 'Check out my body'}
    end
    assert_redirected_to article_path(assigns(:article))
  end

  it "should show article" do
    get :show, {'id' => "12"}
    assert_response :success
  end

end
