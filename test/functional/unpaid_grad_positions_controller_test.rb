require 'test_helper'

class UnpaidGradPositionsControllerTest < ActionController::TestCase
  setup do
    @unpaid_grad_position = unpaid_grad_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unpaid_grad_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unpaid_grad_position" do
    assert_difference('UnpaidGradPosition.count') do
      post :create, unpaid_grad_position: { academicLevel: @unpaid_grad_position.academicLevel, deliverables: @unpaid_grad_position.deliverables, desiredClasses: @unpaid_grad_position.desiredClasses, desiredSkills: @unpaid_grad_position.desiredSkills, jobDescription: @unpaid_grad_position.jobDescription, minimumGPA: @unpaid_grad_position.minimumGPA, recordBegin: @unpaid_grad_position.recordBegin, recordEnd: @unpaid_grad_position.recordEnd, weeklyTimeCommitment: @unpaid_grad_position.weeklyTimeCommitment, workPeriod: @unpaid_grad_position.workPeriod }
    end

    assert_redirected_to unpaid_grad_position_path(assigns(:unpaid_grad_position))
  end

  test "should show unpaid_grad_position" do
    get :show, id: @unpaid_grad_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unpaid_grad_position
    assert_response :success
  end

  test "should update unpaid_grad_position" do
    put :update, id: @unpaid_grad_position, unpaid_grad_position: { academicLevel: @unpaid_grad_position.academicLevel, deliverables: @unpaid_grad_position.deliverables, desiredClasses: @unpaid_grad_position.desiredClasses, desiredSkills: @unpaid_grad_position.desiredSkills, jobDescription: @unpaid_grad_position.jobDescription, minimumGPA: @unpaid_grad_position.minimumGPA, recordBegin: @unpaid_grad_position.recordBegin, recordEnd: @unpaid_grad_position.recordEnd, weeklyTimeCommitment: @unpaid_grad_position.weeklyTimeCommitment, workPeriod: @unpaid_grad_position.workPeriod }
    assert_redirected_to unpaid_grad_position_path(assigns(:unpaid_grad_position))
  end

  test "should destroy unpaid_grad_position" do
    assert_difference('UnpaidGradPosition.count', -1) do
      delete :destroy, id: @unpaid_grad_position
    end

    assert_redirected_to unpaid_grad_positions_path
  end
end
