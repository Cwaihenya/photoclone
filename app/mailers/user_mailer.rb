class UserMailer < ApplicationMailer
 def posting_email(user)
   mail (to: @user.email, subject: "Your image has successfully been posted")
 end
 end
