require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get paintballField" do
    get :paintballField
    assert_response :success
  end

  test "should get paintballMarker" do
    get :paintballMarker
    assert_response :success
  end

end
