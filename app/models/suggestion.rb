class Suggestion < ActiveRecord::Base
    belongs_to :user

    validate :title, presence: true
    validate :description, presence: true
    
end