require 'test_helper'

class CareplansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @careplan = careplans(:one)
  end

  test "should get index" do
    get careplans_url
    assert_response :success
  end

  test "should get new" do
    get new_careplan_url
    assert_response :success
  end

  test "should create careplan" do
    assert_difference('Careplan.count') do
      post careplans_url, params: { careplan: { care_task: @careplan.care_task, create_plan: @careplan.create_plan, customer_id: @careplan.customer_id, family_wants: @careplan.family_wants, long_time_care_goal: @careplan.long_time_care_goal, short_time_care_goal: @careplan.short_time_care_goal, situation_achieved_goal: @careplan.situation_achieved_goal, update_plan: @careplan.update_plan, user_wants: @careplan.user_wants } }
    end

    assert_redirected_to careplan_url(Careplan.last)
  end

  test "should show careplan" do
    get careplan_url(@careplan)
    assert_response :success
  end

  test "should get edit" do
    get edit_careplan_url(@careplan)
    assert_response :success
  end

  test "should update careplan" do
    patch careplan_url(@careplan), params: { careplan: { care_task: @careplan.care_task, create_plan: @careplan.create_plan, customer_id: @careplan.customer_id, family_wants: @careplan.family_wants, long_time_care_goal: @careplan.long_time_care_goal, short_time_care_goal: @careplan.short_time_care_goal, situation_achieved_goal: @careplan.situation_achieved_goal, update_plan: @careplan.update_plan, user_wants: @careplan.user_wants } }
    assert_redirected_to careplan_url(@careplan)
  end

  test "should destroy careplan" do
    assert_difference('Careplan.count', -1) do
      delete careplan_url(@careplan)
    end

    assert_redirected_to careplans_url
  end
end
