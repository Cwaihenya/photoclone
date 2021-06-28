class UserMailer < ApplicationMailer
 def post_email(post)
@post = post

     mail to: "myphotoclone@gmail.com", subject: "Your image has successfully been posted"
 end
 end
