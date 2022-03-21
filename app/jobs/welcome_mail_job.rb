class WelcomeMailJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    WelcomeMailer.with(user: user).welcome_mail.deliver_now
  end
end
