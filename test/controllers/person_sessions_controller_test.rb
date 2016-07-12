require 'test_helper'

class PersonSessionsControllerTest < ActionController::TestCase
  setup do
    @george = Person.create(:email => "george@example.com", :password => "AwesomeSauce")
  end
  
  test "get /signin" do
    get :new

    assert_response :success
    assert_template :new
  end

  test "post to :create" do
    post :create, params: {:person => {:email => "george@example.com", :password => "AwesomeSauce"}}

    assert @controller.logged_in?
    assert_redirected_to "/"
  end

  test "delete to :destroy" do
    login_user(@george, "/person_sessions")
    delete :destroy

    assert_redirected_to '/signin'
    refute @controller.logged_in?
  end
end
