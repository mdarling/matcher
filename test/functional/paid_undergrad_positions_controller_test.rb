require 'test_helper'

class PaidUndergradPositionsControllerTest < ActionController::TestCase
  setup do
    @paid_undergrad_position = paid_undergrad_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paid_undergrad_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paid_undergrad_position" do
    assert_difference('PaidUndergradPosition.count') do
      post :create, paid_undergrad_position: { academicLevel: @paid_undergrad_position.academicLevel, deliverables: @paid_undergrad_position.deliverables, desiredClasses: @paid_undergrad_position.desiredClasses, desiredSkills: @paid_undergrad_position.desiredSkills, jobDescription: @paid_undergrad_position.jobDescription, minimumGPA: @paid_undergrad_position.minimumGPA, positionTitle: @paid_undergrad_position.positionTitle, postingNumber: @paid_undergrad_position.postingNumber, recordBegin: @paid_undergrad_position.recordBegin, recordEnd: @paid_undergrad_position.recordEnd, unmJobs: @paid_undergrad_position.unmJobs, weeklyTimeCommitment: @paid_undergrad_position.weeklyTimeCommitment, workPeriod: @paid_undergrad_position.workPeriod }
    end

    assert_redirected_to paid_undergrad_position_path(assigns(:paid_undergrad_position))
  end

  test "should show paid_undergrad_position" do
    get :show, id: @paid_undergrad_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paid_undergrad_position
    assert_response :success
  end

  test "should update paid_undergrad_position" do
    put :update, id: @paid_undergrad_position, paid_undergrad_position: { academicLevel: @paid_undergrad_position.academicLevel, deliverables: @paid_undergrad_position.deliverables, desiredClasses: @paid_undergrad_position.desiredClasses, desiredSkills: @paid_undergrad_position.desiredSkills, jobDescription: @paid_undergrad_position.jobDescription, minimumGPA: @paid_undergrad_position.minimumGPA, positionTitle: @paid_undergrad_position.positionTitle, postingNumber: @paid_undergrad_position.postingNumber, recordBegin: @paid_undergrad_position.recordBegin, recordEnd: @paid_undergrad_position.recordEnd, unmJobs: @paid_undergrad_position.unmJobs, weeklyTimeCommitment: @paid_undergrad_position.weeklyTimeCommitment, workPeriod: @paid_undergrad_position.workPeriod }
    assert_redirected_to paid_undergrad_position_path(assigns(:paid_undergrad_position))
  end

  test "should destroy paid_undergrad_position" do
    assert_difference('PaidUndergradPosition.count', -1) do
      delete :destroy, id: @paid_undergrad_position
    end

    assert_redirected_to paid_undergrad_positions_path
  end
end
