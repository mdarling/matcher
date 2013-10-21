class SuccessfulMatch < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.successful_match.project_suggestions.subject
  #
  def project_suggestions
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
