require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  title = "| Ruby on Rails Tutorial Sample App"
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home #{title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help #{title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About #{title}"
  end
end
