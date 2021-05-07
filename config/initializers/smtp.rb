ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => ENV['SENDGRID_API_KEY'],
  :domain => "my-notes-2021.herokuapp.com",
  :address => "smtp.sendgrid.net",
  :port => 587, 
  :authentication => :plain
}