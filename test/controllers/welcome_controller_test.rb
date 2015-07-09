require "test_helper"

describe "WelcomeController" do
  describe "GET :index" do
    before do
      get :index
    end

    it "renders welcome/index" do
      must_render_template "welcome/index"
    end

    it "responds with success" do
      must_respond_with :success
    end
  end
end