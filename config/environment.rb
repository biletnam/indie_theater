require File.join(File.dirname(__FILE__), 'boot')

# Load heroku vars from local file
heroku_env = File.join(Rails.root, 'config', 'heroku_env.rb')
load(heroku_env) if File.exists?(heroku_env)

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
IndieTheater::Application.initialize!