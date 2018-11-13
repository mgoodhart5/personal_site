require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_it_can_return_a_404_error
    visit '/info'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
