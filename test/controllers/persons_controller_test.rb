require 'test_helper'

class PersonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get persons_new_url
    assert_response :success
  end

  test "should get index" do
    get persons_index_url
    assert_response :success
  end

  test "should get create" do
    get persons_create_url
    assert_response :success
  end

end
