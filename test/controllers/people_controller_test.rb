require "test_helper"

class PeopleControllerTest < ActionController::TestCase
  test "get index is successful" do
    get :index

    assert_response :success
  end

  test "get to new is successful" do
    get :new

    assert_response :success
  end

  test "get to new provides a user_sign_up" do
    get :new

    assert assigns(:person).is_a?(Person::SignUp)
  end

end
