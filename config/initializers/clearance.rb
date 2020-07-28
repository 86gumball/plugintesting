Clearance.configure do |config|
  config.mailer_sender = "rubenrailsmailsender@gmail.com"
  config.rotate_csrf_on_sign_in = true
  config.allow_sign_up = false
  config.routes = false
end
