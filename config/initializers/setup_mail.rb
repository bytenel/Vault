require 'development_mail_interceptor'
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.bizmail.yahoo.com",
  :port                 => 465,
  :domain               => "www.vaultrms.com",
  :user_name            => "admin@vaultrms.com",
  :password             => "pass123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?