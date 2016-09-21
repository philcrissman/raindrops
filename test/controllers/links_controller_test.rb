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

  test "get to index sets @links to Link.all if no person_id present" do
    get :index
    assert_not_nil assigns(:links), "Expected @links to be not nil"
    assert_equal Link.all, assigns(:links)
  end

  test "get to index assigns @links to a persons link is person_id present" do
    get :index, :params => {:person_id => @george.id}
    assert_equal @george.links, assigns(:links)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:link)
  end

  test "should post create" do
    post :create, :params => {:person_id => @george.id, :link => {:url => "http://example.com", :title => "AwesomeSauce", :description => "The most awesome sauce ever"}}
    assert_not_nil assigns(:link)
    assert assigns(:link).persisted?, "Expected @link to be saved, but it wasn't"
    assert_response :redirect
  end

  test "should get show" do
    get :show, :params => {:id => 1}
    assert_response :success
  end

  test "should get edit" do
    get :edit, :params => {:id => 1}
    assert_response :success
  end

  test "should get update" do
    get :update, :params => {:id => 1}
    assert_response :redirect
  end

  test "should get destroy" do
    get :destroy, :params => {:id => 1}
    assert_response :redirect
  end

end
