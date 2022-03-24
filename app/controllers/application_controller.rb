require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'

    set :default_content_type, :json
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"] 
  end

  error ActiveRecord::RecordNotFound do
    
    {errors: "Record not found with id #{params['id']}"}.to_json
  end

end
