# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview
    def welcome_mail
    user = User.new(name: 'Mohamed', email: 'mohamed@example.com')

    WelcomeMailer.with(user: user).welcome_mail

    end
end
