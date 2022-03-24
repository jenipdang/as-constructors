require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# Allow CORS (Cross-Origin Resource Sharing) requests
# use Rack::Cors do
#   allow do
#     origins 'localhost:3000'
#     resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
#   end
# end

# Parse JSON from the request body into the params hash
use Rack::MethodOverride
use Rack::JSONBodyParser
use SessionsController
use UsersController
use SuggestionsController
run ApplicationController
