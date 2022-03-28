require "pry"

class UsersController < ApplicationController

  # GET: /users
    get '/users' do
        User.all.to_json(only: [:id, :name, :city, :state], include: { suggestions: {only: [:id, :title, :description, :created_at]}})
    end


  # POST: /users
    post "/users" do 
        @user = User.create(params)
        if @user.id
            serialized_user
        else
            {message: @user.errors.full_messages.to_sentence}.to_json
        end
    end

end

