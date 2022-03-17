class SuggestionsController < 
    
    get '/suggestions' do
        Suggestion.all.to_json(only: [:id, :title, :description, :user_id, :created_at])
    end
    
    get '/suggestions/:id' do
        find_suggestion
        if @suggestion
            serialized_suggestion
        else
            {errors: "Record not found with id #{params['id']}"}.to_json
        end
    end
    
    post "/suggestions" do
        @suggestion = Suggestion.create(params)
        if @suggestion.id
            serialized_suggesstion
        else
            @suggestion.errors.full_messages.to_sentence
        end
    end

    patch "/suggestions/:id" do
        find_suggestion
        if @suggestion && @suggesstion.update(params)
            serialized_suggestion
        elsif !@suggestion
            {errors: "Record not found with id #{params['id']}"}.to_json
        else
            {errors: @suggestion.errors.full_messages.to_sentence}.to_json
        end
    end
    
    delete '/suggestions/:id' do
        find_suggestion
        if @suggestion&.destroy
            {messages: "Record successfully destroyed"}.to_json
        else
            {errors: "Record not found with id #{params['id']}"}.to_json
        end
    end

    private

    def find_suggestion
        @suggesstion = Suggestion.find_by_id(params["id"])
    end
    
    def serialized_suggesstion
        @suggestion.to_json(include: :user)
    end

end