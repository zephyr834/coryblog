require 'test_helper'

feature "Welcome Flow" do
  scenario "goes to Welcome page and browse to Articles" do
    visit ('/welcome/index')
    page.must_have_content("Hello, Rails!")
    click_link("My Blog")
    page.must_have_content("Listing Articles")
  end
end