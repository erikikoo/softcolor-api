# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


 ActionMailer::Base.smtp_settings = {
    :user_name => ENV["UOL_EMAIL"],
    :password => ENV["UOL_SENHA"],    
    :address => ENV["UOL_ADDRESS"],
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
}