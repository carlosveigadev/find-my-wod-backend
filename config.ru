# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

require 'rack/cors'
use Rack::Cors do
  # allow all origins in development
  allow do
    origins '*', 'https://xenodochial-shockley-55c19b.netlify.app/'
    resource '*',
             headers: :any,
             methods: %i[get post delete put options]
  end
end
