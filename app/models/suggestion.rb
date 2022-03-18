class Suggestion < ActiveRecord::Base
    belongs_to :user

    validates :title, :description, presence: true

    # def formatDate
    #     self.created_at.strftime("%^b %d %y")
    # end
    
end