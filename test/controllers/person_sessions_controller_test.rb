require 'test_helper'

class PersonSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    george = Person.create(:email => "george@example.com", :password => "AwesomeSauce")
  end
  
  test "get /signin" do
    get "/signin"

    assert_response :success
    assert_template :new
  end

  test "post to :create" do
    post "/person_sessions", params: {:person => {:email => "george@example.com", :password => "AwesomeSauce"}}

    assert @controller.logged_in?
    assert_redirected_to "/"
  end
end
