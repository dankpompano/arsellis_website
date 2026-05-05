class ContactMailer < ApplicationMailer
  default from: ENV["EMAIL"]

  def welcome_email
    @user = params[:user]
    @url  = "http://example.com/login"
    mail(to: @user.email, subject: "Welcome to My Awesome Site")
  end

  def submission_email
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @address = params[:address]
    @city = params[:city]
    @state = params[:state]
    @zip_code = params[:zip_code]
    @email = params[:email]
    @phone = params[:phone]
    @project_type = params[:project_type]
    @has_plans = params[:has_plans]
    @referral = params[:referral]

    mail(
      to: "jacoblittler2003@gmail.com",
      subject: "New Consoltation")
  end
end
