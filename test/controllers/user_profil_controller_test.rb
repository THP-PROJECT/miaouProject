require "test_helper"

class UserProfilControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_profil_show_url
    assert_response :success
  end
end
