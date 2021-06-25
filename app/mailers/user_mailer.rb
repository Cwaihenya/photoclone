class UserMailer < ApplicationMailer
 def user_mail(post)
@post = post

     mail to: "myphotoclone@gmail.com", subject: "Your image has successfully been posted"
 end
 end
