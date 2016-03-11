require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # for now, root should go to static_pages coming soon
  test '/' do
    get '/'
    
    assert_response :success
    assert_template :coming_soon
  end
end
