class UserMailer < ApplicationMailer
    default from: 'pasilaxmidevi@gmail.com'
    def welcome_email
      @user = params[:user]
      @url  = 'http://example.com/login'
      attachments.inline['filename.jpg'] = File.read('/home/laxmipasi/Pictures/i1.png')
      mail(to: @user.email, subject: 'Welcome to My Awesome Site') do |format|
        format.text
        format.html { render layout: 'email_layout' }
      end
    end   
    # def welcome_email
    #     @user = params[:user]
    #     attachments.inline['filename.jpg'] = File.read('public/uploads/user/avatar/45/fashion.png')
    #     mail(to: params[:user].email) do |format|
    #       format.html 
    #       format.text
    #     end
    # end
end
