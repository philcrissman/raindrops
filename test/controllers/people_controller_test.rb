require "test_helper"

class PeopleControllerTest < ActionController::TestCase
#  test "get index is successful" do
#    get :index
#
#    assert_response :success
#  end

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

    person = assigns(:person)

    assert person.is_a?(Person::SignUp), "person should be the expected class"
    assert person.persisted?, "person should be saved"
    assert_equal "george@example.com", person.email
    assert @controller.logged_in?, "person should be logged_in"
    assert_equal person, @controller.current_user
    assert_response :redirect
    assert_redirected_to root_url
  end

end
