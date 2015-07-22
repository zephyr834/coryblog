require 'test_helper'

feature "Article Flow" do

    scenario "Create a new Article" do
        visit ('/articles')
        page.must_have_content("Listing Articles")
        assert_not page.has_content?("Bottle-Nose Dolphin")
        click_link("New article")
        page.must_have_content("New Article")
        fill_in('Title', :with => 'Bottle-Nose Dolphin')
        fill_in('Body', :with => 'The cow jumped over the moon')
        click_button('Save Article')
        page.must_have_content("The cow jumped over the moon")
        click_link("Back")
        page.must_have_content("Bottle-Nose Dolphin")
        # save_and_open_page  #Debugs by opening the current page!
    end

     scenario "View Listing of Articles" do
        visit (articles_path)
        page.must_have_content("Listing Articles")
        page.must_have_content("article12 super muscular body")
    end

end