require "test_helper"

class PeopleControllerTest < ActionController::TestCase
  test "index" do
    get :index

    assert_response :success
  end

end
