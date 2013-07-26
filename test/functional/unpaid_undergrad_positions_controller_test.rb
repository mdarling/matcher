require 'test_helper'

class UnpaidUndergradPositionsControllerTest < ActionController::TestCase
  setup do
    @unpaid_undergrad_position = unpaid_undergrad_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unpaid_undergrad_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unpaid_undergrad_position" do
    assert_difference('UnpaidUndergradPosition.count') do
      post :create, unpaid_undergrad_position: { academicLevel: @unpaid_undergrad_position.academicLevel, deliverables: @unpaid_undergrad_position.deliverables, desiredClasses: @unpaid_undergrad_position.desiredClasses, desiredSkills: @unpaid_undergrad_position.desiredSkills, jobDescription: @unpaid_undergrad_position.jobDescription, minimumGPA: @unpaid_undergrad_position.minimumGPA, recordBegin: @unpaid_undergrad_position.recordBegin, recordEnd: @unpaid_undergrad_position.recordEnd, weeklyTimeCommitment: @unpaid_undergrad_position.weeklyTimeCommitment, workPeriod: @unpaid_undergrad_position.workPeriod }
    end

    assert_redirected_to unpaid_undergrad_position_path(assigns(:unpaid_undergrad_position))
  end

  test "should show unpaid_undergrad_position" do
    get :show, id: @unpaid_undergrad_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unpaid_undergrad_position
    assert_response :success
  end

  test "should update unpaid_undergrad_position" do
    put :update, id: @unpaid_undergrad_position, unpaid_undergrad_position: { academicLevel: @unpaid_undergrad_position.academicLevel, deliverables: @unpaid_undergrad_position.deliverables, desiredClasses: @unpaid_undergrad_position.desiredClasses, desiredSkills: @unpaid_undergrad_position.desiredSkills, jobDescription: @unpaid_undergrad_position.jobDescription, minimumGPA: @unpaid_undergrad_position.minimumGPA, recordBegin: @unpaid_undergrad_position.recordBegin, recordEnd: @unpaid_undergrad_position.recordEnd, weeklyTimeCommitment: @unpaid_undergrad_position.weeklyTimeCommitment, workPeriod: @unpaid_undergrad_position.workPeriod }
    assert_redirected_to unpaid_undergrad_position_path(assigns(:unpaid_undergrad_position))
  end

  test "should destroy unpaid_undergrad_position" do
    assert_difference('UnpaidUndergradPosition.count', -1) do
      delete :destroy, id: @unpaid_undergrad_position
    end

    assert_redirected_to unpaid_undergrad_positions_path
  end
end
