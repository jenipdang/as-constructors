class SessionsController < ApplicationController

     post "/signin" do
            user = User.find_by_username(params[:username])
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id
                halt 200, {user: user, message:"User successfully logged in"}.to_json
            else
                halt 404, {message: "Invalid information"}.to_json
            end
        end

    delete "/signout" do
        session.delete("user_id")
        {message: "Successfully logged out."}.to_json
    end

    get "/me" do
        @current_user ||= User.find_by_id(session[:user_id]) 
        if @current_user
            halt 200, {user: @current_user}.to_json
        else
            halt 400, {message: "No user is logged in."}.to_json
        end
    end
end