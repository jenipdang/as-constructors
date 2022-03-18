require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    # set :views, 'app/views'
    set :default_content_type, :json
    set :session_secret, ENV["SESSION_SECRET"]
  end

  error ActiveRecord::RecordNotFound do
    # 'Sorry there was a nasty error - ' + env['sinatra.error'].message
    {errors: "Record not found with id #{params['id']}"}.to_json
  end

end
