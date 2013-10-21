require 'test_helper'

class SuccessfulMatchTest < ActionMailer::TestCase
  test "project_suggestions" do
    mail = SuccessfulMatch.project_suggestions
    assert_equal "Project suggestions", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
