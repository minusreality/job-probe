
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => "587",
  :domain => "localhost.localdomain",
  :authentication => :plain,
  :user_name => "YOUR USERNAME",
  :password => "YOUR PASSWORD"
}