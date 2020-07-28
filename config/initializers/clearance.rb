Clearance.configure do |config|
  config.mailer_sender = ENV["MAIL_SENDER"]
  config.rotate_csrf_on_sign_in = true
  config.allow_sign_up = false
  config.routes = false
end
