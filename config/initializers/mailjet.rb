require 'dotenv-rails'

Dotenv.load('.env')


Mailjet.configure do |config|
  config.api_key = 'YOUR_MAILJET_API_KEY'
  config.default_from = 'sender@example.com'
end