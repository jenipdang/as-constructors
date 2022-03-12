require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/users' do
    users = User.all
    users.to_json(only: [:id, :name, :city, :state], include: { suggestions: {only: [:id, :title, :description, :created_at]}})
  end

  post '/users' do
    users = User.create(
      name: params[:name],
      city: params[:city],
      state: params[:state],
    )
    users.to_json
  end

  delete '/users/:id' do
    users = User.find(params[:id])
    users.destroy
    users.to_json
  end

  get '/suggestions' do
    suggestions = Suggestion.all
    suggestions.to_json(only: [:id, :title, :description, :user_id, :created_at])
  end

  get '/suggestions/:id' do
    suggestions = Suggestion.find(params[:id])
    suggestions.to_json
  end

  post '/suggestions' do ##need to add statement to check if user is exisiting, if not, create a new user
    suggestions = Suggestion.create(
      title: params[:title],
      description: params[:description],
      user_id: params[:user_id]
    )
    suggestions.to_json
  end

  delete '/suggestions/:id' do
    suggestions = Suggestion.find(params[:id])
    suggestions.destroy
    suggestions.to_json
  end

end
