require 'test_helper'

class PaidGradPositionsControllerTest < ActionController::TestCase
  setup do
    @paid_grad_position = paid_grad_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paid_grad_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paid_grad_position" do
    assert_difference('PaidGradPosition.count') do
      post :create, paid_grad_position: { academicLevel: @paid_grad_position.academicLevel, deliverables: @paid_grad_position.deliverables, desiredClasses: @paid_grad_position.desiredClasses, desiredSkills: @paid_grad_position.desiredSkills, jobDescription: @paid_grad_position.jobDescription, minimumGPA: @paid_grad_position.minimumGPA, positionTitle: @paid_grad_position.positionTitle, postingNumber: @paid_grad_position.postingNumber, recordBegin: @paid_grad_position.recordBegin, recordEnd: @paid_grad_position.recordEnd, unmJobs: @paid_grad_position.unmJobs, weeklyTimeCommitment: @paid_grad_position.weeklyTimeCommitment, workPeriod: @paid_grad_position.workPeriod }
    end

    assert_redirected_to paid_grad_position_path(assigns(:paid_grad_position))
  end

  test "should show paid_grad_position" do
    get :show, id: @paid_grad_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paid_grad_position
    assert_response :success
  end

  test "should update paid_grad_position" do
    put :update, id: @paid_grad_position, paid_grad_position: { academicLevel: @paid_grad_position.academicLevel, deliverables: @paid_grad_position.deliverables, desiredClasses: @paid_grad_position.desiredClasses, desiredSkills: @paid_grad_position.desiredSkills, jobDescription: @paid_grad_position.jobDescription, minimumGPA: @paid_grad_position.minimumGPA, positionTitle: @paid_grad_position.positionTitle, postingNumber: @paid_grad_position.postingNumber, recordBegin: @paid_grad_position.recordBegin, recordEnd: @paid_grad_position.recordEnd, unmJobs: @paid_grad_position.unmJobs, weeklyTimeCommitment: @paid_grad_position.weeklyTimeCommitment, workPeriod: @paid_grad_position.workPeriod }
    assert_redirected_to paid_grad_position_path(assigns(:paid_grad_position))
  end

  test "should destroy paid_grad_position" do
    assert_difference('PaidGradPosition.count', -1) do
      delete :destroy, id: @paid_grad_position
    end

    assert_redirected_to paid_grad_positions_path
  end
end
