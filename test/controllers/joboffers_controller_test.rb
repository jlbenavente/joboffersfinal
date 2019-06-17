require 'test_helper'

class JoboffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joboffer = joboffers(:one)
  end

  test "should get index" do
    get joboffers_url
    assert_response :success
  end

  test "should get new" do
    get new_joboffer_url
    assert_response :success
  end

  test "should create joboffer" do
    assert_difference('Joboffer.count') do
      post joboffers_url, params: { joboffer: { budget: @joboffer.budget, city_id: @joboffer.city_id, commune_id: @joboffer.commune_id, description: @joboffer.description, image: @joboffer.image, region_id: @joboffer.region_id, skill_id: @joboffer.skill_id, title: @joboffer.title, user_id: @joboffer.user_id } }
    end

    assert_redirected_to joboffer_url(Joboffer.last)
  end

  test "should show joboffer" do
    get joboffer_url(@joboffer)
    assert_response :success
  end

  test "should get edit" do
    get edit_joboffer_url(@joboffer)
    assert_response :success
  end

  test "should update joboffer" do
    patch joboffer_url(@joboffer), params: { joboffer: { budget: @joboffer.budget, city_id: @joboffer.city_id, commune_id: @joboffer.commune_id, description: @joboffer.description, image: @joboffer.image, region_id: @joboffer.region_id, skill_id: @joboffer.skill_id, title: @joboffer.title, user_id: @joboffer.user_id } }
    assert_redirected_to joboffer_url(@joboffer)
  end

  test "should destroy joboffer" do
    assert_difference('Joboffer.count', -1) do
      delete joboffer_url(@joboffer)
    end

    assert_redirected_to joboffers_url
  end
end
