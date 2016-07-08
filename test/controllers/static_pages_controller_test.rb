require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # for now, root should go to static_pages coming soon
  test 'coming_soon' do
    get '/coming_soon'
    
    assert_response :success
    assert_template :coming_soon
  end

  # well?
  test 'trying to go somewhere while not authenticated' do
    get '/'

    assert_response :redirect
    assert_redirected_to "/coming_soon"
  end
end
