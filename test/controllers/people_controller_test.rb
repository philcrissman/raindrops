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

  test "get to new provides a person_sign_up" do
    get :new

    assert assigns(:person).is_a?(Person::SignUp)
  end

  test "post to create, creates and logs in a person" do
    post :create, params: {:person => {:email => "george@example.com", :password => "AwesomeSauce", :password_confirmation => "AwesomeSauce"}}

    assert assigns(:person).is_a?(Person::SignUp)
    assert_equal "george@example.com", assigns(:person).email
    # assert_redirects
  end

end
