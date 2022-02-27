class WelcomeMailer < ApplicationMailer
    def welcome_mail
        @user = params[:user]
        mail(to: @user.email, subject: "Welcome email!")
    end
end
