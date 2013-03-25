require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get preferences" do
    get :preferences
    assert_response :success
  end

end
