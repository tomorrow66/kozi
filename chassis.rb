# Uses ./Gemfile for gem management
require 'bundler'
Bundler.require

# Sets environment, defaults to development
#   ~: rake app:server env=production
set :environment, ENV['RACK_ENV'] || ENV['env'] || :development

# Requires the necessary files, in order, for the app
['settings', 'libraries', 'models', 'routes'].each do |directory|
	Dir["./#{directory}/**/*.rb"].each { |file| require file }
end

# Requires middleware
#Dir["./middleware/**/chassis.rb"].each { |file| require file }

# Catches all routes and attempts to match them to a view file
#   This must load AFTER all other routes
#   Otherwise it catches all incoming GET requests
#get('/*/?') { erb :"#{params[:splat].first}" }

# Finalizes the models
DataMapper.finalize