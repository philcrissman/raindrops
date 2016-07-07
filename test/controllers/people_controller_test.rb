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

<<<<<<< HEAD
  test "get to new provides a user_sign_up" do
=======
  test "get to new provides a person_sign_up" do
>>>>>>> f52ed73da84ae7aeaca59a71239be37634053646
    get :new

    assert assigns(:person).is_a?(Person::SignUp)
  end

<<<<<<< HEAD
=======
  test "post to create, creates and logs in a person" do
    post :create, params: {:person => {:email => "george@example.com", :password => "AwesomeSauce", :password_confirmation => "AwesomeSauce"}}

    assert assigns(:person).is_a?(Person::SignUp)
    assert_equal "george@example.com", assigns(:person).email
    # assert_redirects
  end

>>>>>>> f52ed73da84ae7aeaca59a71239be37634053646
end
