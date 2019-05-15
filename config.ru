# This file is used by Rack-based servers to start the application.


# require_relative 'config/environment'

# run Rails.application

# require ::File.expand_path('../config/environment',  __FILE__)
# run Rails.application

# require 'rack/cors'
# config.middleware.insert_before "ActionDispatch::Static", "Rack::Cors" do
#     allow do
#         origins '*'
#         resource '*',
#             headers: :any,
#             methods: [:get, :post, :delete, :put, :patch, :options, :head],
#             max_age: 0,
#             expose: :location
#         end
#     end

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application

require 'rack/cors'
use Rack::Cors do

  # allow all origins in development
  allow do
    origins '*'
    resource '*', 
        :headers => :any, 
        :methods => [:get, :post, :delete, :put, :options]
  end
end