require 'test_helper'

class ProfilControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get profil_show_url
    assert_response :success
  end

  test "should get create" do
    get profil_create_url
    assert_response :success
  end

  test "should get update" do
    get profil_update_url
    assert_response :success
  end

end
