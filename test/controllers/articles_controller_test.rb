require "test_helper"

describe ArticlesController do

  it "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end
  
  
end
