require 'test_helper'

class LinksControllerTest < ActionController::TestCase

  setup do
    @george = Person.create(:email => "george@example.com", :password => "AwesomeSauce")
    login_user(@george, "/person_sessions")
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :redirect
  end

  test "should get show" do
    get :show, params: {id: 1}
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: {id: 1}
    assert_response :success
  end

  test "should get update" do
    get :update, params: {id: 1}
    assert_response :redirect
  end

  test "should get destroy" do
    get :destroy, params: {id: 1}
    assert_response :redirect
  end

end
