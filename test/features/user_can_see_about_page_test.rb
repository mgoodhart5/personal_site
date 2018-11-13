require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_about_page
    visit '/about'

    assert page.has_content?("About Me!")
    assert page.has_content?("Here's some stuff to know.")
    assert_equal 200, page.status_code
  end
end
